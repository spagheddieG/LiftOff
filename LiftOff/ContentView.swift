//
//  ContentView.swift
//  LiftOff
//
//  Created by Eddie G on 10/26/23.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    WorkoutCardView(workoutDetails: GetWorkoutDetails(workout: .BenchPress))
        .padding(30)
}
