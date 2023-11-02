//
//  Exercise.swift
//  7 Minute Workout
//
//  Created by Vito Borghi on 01/11/2023.
//
import SwiftData
import Foundation

enum Muscle: Codable {
    case biceps, triceps, shoulders, deltoids, upperBack, lowerBack, abs, pectorals, glutes, quadriceps, femoralTriceps, calfs
}

@Model
class Exercise {
    let name: String
    let targetMuscles: Set<Muscle>
    private let isLiked: Bool?
    //let showcase: Video?
    
    init(name: String, targetMuscles: Set<Muscle>, isLiked: Bool?) {
        self.name = name
        self.targetMuscles = targetMuscles
        self.isLiked = isLiked
    }
}
