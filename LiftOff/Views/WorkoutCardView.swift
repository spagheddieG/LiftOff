//
//  WorkoutCardView.swift
//  LiftOff
//
//  Created by Eddie G on 10/26/23.
//
import SwiftUI
import SwiftUIGIF
import Giffy
import AVKit
import SDWebImageSwiftUI


struct WorkoutCardView: View {
    
    @State var workoutDetails: WorkoutDetails
    var body: some View{
        
        NavigationView
        {
            
            VStack(){
                VStack {
                    WebImage(url: URL(string: workoutDetails.gif)!)
                        .resizable()
                        .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height/4, alignment: .leading)
                }
                
                Text(workoutDetails.exercise)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Primary: \(workoutDetails.primary)")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Secondary: \(workoutDetails.secondary)")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                HStack(content: {
                    
                    Button(action: {
                        self.workoutDetails = GetWorkoutDetails(workout: .BenchPress)
                    }, label: {
                        Text("Bench Press")
                    }).buttonStyle(.bordered)
                    
                    Button(action: {
                        self.workoutDetails = GetWorkoutDetails(workout: .Squat)
                    }, label: {
                        Text("Squat")
                    }).buttonStyle(.bordered)
                    
                    Button(action: {
                        self.workoutDetails = GetWorkoutDetails(workout: .Deadlift)
                    }, label: {
                        Text("Deadlift")
                    }).buttonStyle(.bordered)
                })
                Spacer()
                
            }
            .navigationBarTitle(Text("Workouts"))
        }
    }
}


#Preview {
    
    WorkoutCardView(workoutDetails: GetWorkoutDetails(workout: .BenchPress))
        .padding(30)
}
