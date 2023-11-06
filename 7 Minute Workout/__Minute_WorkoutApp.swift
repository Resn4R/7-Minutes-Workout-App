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
    var container: ModelContainer

    init() {
        do {
            let userConfig = ModelConfiguration(for: User.self)
            let workoutConfig = ModelConfiguration(for: Workout.self)
            let exerciseConfig = ModelConfiguration(for: Exercise.self)

            container = try ModelContainer(for: User.self, Workout.self, Exercise.self, configurations: userConfig, workoutConfig, exerciseConfig)
        } catch {
            fatalError("Failed to configure SwiftData container.")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            MainMenu()
        }
        .modelContainer(container)
    }
}
