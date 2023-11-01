//
//  Workout.swift
//  7 Minute Workout
//
//  Created by Vito Borghi on 01/11/2023.
//
import SwiftData
import Foundation

@Model
class Workout {
    enum Intensity {
        case relaxed, veryEasy, easy, moderate, hard, veryHard, extreme
    }
    
    let name: String?
    let exercises: [Exercise]
    let cycles: Int
    let intensity: Intensity
    
    init(name: String?, exercises: [Exercise], cycles: Int, intensity: Intensity) {
        self.name = name
        self.exercises = exercises
        self.cycles = cycles
        self.intensity = intensity
    }
}
