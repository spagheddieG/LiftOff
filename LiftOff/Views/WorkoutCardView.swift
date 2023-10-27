//
//  WorkoutCardView.swift
//  LiftOff
//
//  Created by Eddie G on 10/26/23.
//
import SwiftUI
import SwiftUIGIF
import Giffy


struct WorkoutCardView: View {
    
    var url: URL
    
    var body: some View{
        
        VStack(){
            VStack {
                AsyncGiffy(url: url) { phase in
                    switch phase {
                    case .loading:
                        ProgressView()
                    case .error:
                        Text("Failed to load GIF")
                    case .success(let giffy):
                        giffy.frame(width:UIScreen.main.bounds.width, height:UIScreen.main.bounds.height/4)
                    }
                }
            }
            
            Text("Bench Press (Barbell)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("Primary: Chest")
                .frame(maxWidth: .infinity, alignment: .leading)

            Text("Secondary: Triceps, Shoulders")
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()

        }
    }
        
}

enum WorkoutType {
case BenchPress, Deadlift, Squat
}

func GetWorkoutGif(workout: WorkoutType) -> String {
    if workout == WorkoutType.BenchPress{
        return "https://media.tenor.com/0hoNLcggDG0AAAAC/bench-press.gif"
    }
    
    else if workout == WorkoutType.Deadlift{
        return "https://www.kettlebellkings.com/cdn/shop/articles/deadlift_exercise.gif?v=1694668938"
    }
    
    else if workout == WorkoutType.Squat{
        return "https://www.inspireusafoundation.org/wp-content/uploads/2022/03/barbell-full-squat.gif"
    }
    else{
        return "empty"
    }
}

#Preview {
    
    WorkoutCardView(url: URL( string: GetWorkoutGif(workout: .Squat))!)
        .padding(30)
}
