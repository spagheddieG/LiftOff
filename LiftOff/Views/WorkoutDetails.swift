struct WorkoutDetails: Equatable {
    var exercise = ""
    var primary = ""
    var secondary = ""
    var gif = ""
    
}

enum WorkoutType {
    case BenchPress, Deadlift, Squat
}

func GetWorkoutDetails(workout: WorkoutType) -> WorkoutDetails {
    
    if workout == WorkoutType.BenchPress{
        return WorkoutDetails(exercise: "Bench Press",
                              primary: "Chest", secondary: "Triceps, Shoulders",
                              gif: "https://hips.hearstapps.com/menshealth-uk/main/assets/bench-press.gif")
    }
    
    else if workout == WorkoutType.Squat{
        return WorkoutDetails(exercise: "Squat",
                              primary: "Quads", secondary: "Glutes, Hamstrings, Calves",
                              gif: "https://media.tenor.com/pANVg22G1JAAAAAC/workouts-squats.gif")
    }
    
    else if workout == WorkoutType.Deadlift{
        return WorkoutDetails(exercise: "Deadlift",
                              primary: "Glutes, Hamstrings, Lower Back", secondary: "Lats, Traps, Abs",
                              gif: "https://hips.hearstapps.com/hmg-prod/images/workouts/2016/03/barbelldeadlift-1457038089.gif")
    }
    
    else{return WorkoutDetails()
    }
}
