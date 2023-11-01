//
//  __Minute_WorkoutApp.swift
//  7 Minute Workout
//
//  Created by Vito Borghi on 31/10/2023.
//

import SwiftData
import SwiftUI

@main
struct __Minute_WorkoutApp: App {
    
    var body: some Scene {
        WindowGroup {
            MainMenu()
        }
        .modelContainer(for: [User.self, Workout.self, Exercise.self])
    }
}
