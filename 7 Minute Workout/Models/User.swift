//
//  User.swift
//  7 Minute Workout
//
//  Created by Vito Borghi on 01/11/2023.
//

import HealthKit
import Foundation

class User {
    let workoutReminder: Bool
    let inactivityReminder: Bool
    let HealthKitConnected: Bool
    
    init(workoutReminder: Bool = false, inactivityReminder: Bool = false, HealthKitConnected: Bool = false) {
        self.workoutReminder = workoutReminder
        self.inactivityReminder = inactivityReminder
        self.HealthKitConnected = HealthKitConnected
    }
}
