//
//  User.swift
//  7 Minute Workout
//
//  Created by Vito Borghi on 01/11/2023.
//

import HealthKit
import Foundation

class User {
    let motivationLevels: Dictionary<Int, String> = [
        1:"I was told I need to make some changes",
        2:"I know I should focus on my health (and would feel guilty if I didn’t)",
        3:"I want to take care of myself because I know it will benefit my quality of life",
        4:"I enjoy living a healthy lifestyle"
    ]
    let fitnessLevels: Dictionary<Int, String> = [
        1: "Beginner - Just getting started into a more regular exercise routing. I hope to develop strength and stamina with every workout",
        2: "Beginner+ - I have built some strength and stamina that I hope to improve on quickly with a new exercise routine",
        3: "Intermediate - I exercise regularly and hope to improve on my fitness with higher intensity workouts",
        4: "Intermediate+ - I am ready for high intensity workouts with more challenging exercises. I hope to see faster results than my current routine",
        5: "Advanced - I am ready to get the most from the highest intensity workouts with the most difficult exercises"

    ]
    
    let workoutReminder: Bool
    let inactivityReminder: Bool
    let HealthKitConnected: Bool
    let motivation: Int
    let fitnessLevel: Int
    
    init(workoutReminder: Bool = false, inactivityReminder: Bool = false, HealthKitConnected: Bool = false, motivation: Int = 1, fitnessLevel: Int = 1) {
        self.workoutReminder = workoutReminder
        self.inactivityReminder = inactivityReminder
        self.HealthKitConnected = HealthKitConnected
        self.motivation = motivation
        self.fitnessLevel = fitnessLevel
    }
}
