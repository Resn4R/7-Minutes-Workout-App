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
    
    let intensityDictionary: Dictionary<Int, String> = [
        1:"relaxed",
        2:"Very easy",
        3:"easy",
        4:"moderate",
        5:"hard",
        6:"very Hard",
        7:"extreme"
    ]
    
    let name: String?
    let exercises: [Exercise]
    let cycles: Int
    let intensity: Int
    
    init(name: String?, exercises: [Exercise], cycles: Int, intensity: Int) {
        self.name = name
        self.exercises = exercises
        self.cycles = cycles
        self.intensity = intensity
    }
}
