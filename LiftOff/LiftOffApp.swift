//
//  LiftOffApp.swift
//  LiftOff
//
//  Created by Eddie G on 10/26/23.
//

import SwiftUI

@main
struct LiftOffApp: App {
    var body: some Scene {
        WindowGroup {
            WorkoutCardView(workoutDetails: GetWorkoutDetails(workout: .BenchPress))
                .padding(30)
        }
    }
}
