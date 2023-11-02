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
            let config1 = ModelConfiguration(for: User.self)
            let config2 = ModelConfiguration(for: Workout.self)
            let config3 = ModelConfiguration(for: Exercise.self)

            container = try ModelContainer(for: User.self, Workout.self, Exercise.self, configurations: config1, config2, config3)
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
