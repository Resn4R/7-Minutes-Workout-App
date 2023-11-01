//
//  Workout.swift
//  7 Minute Workout
//
//  Created by Vito Borghi on 01/11/2023.
//

import Foundation

class Workout {
    enum Intensity {
        case relaxed, veryEasy, easy, moderate, hard, veryHard, extreme
    }
    
    let exercises: [Exercise]
    let cycles: Int
    let intensity: Intensity
    
    init(exercises: [Exercise], cycles: Int, intensity: Intensity) {
        self.exercises = exercises
        self.cycles = cycles
        self.intensity = intensity
    }
}
