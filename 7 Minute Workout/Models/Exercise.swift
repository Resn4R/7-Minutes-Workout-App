//
//  Exercise.swift
//  7 Minute Workout
//
//  Created by Vito Borghi on 01/11/2023.
//

import CoreVideo
import Foundation

class Exercise {
    enum Muscle {
        case biceps, triceps, shoulders, deltoids, upperBack, lowerBack, abs, pectorals, glutes, quadriceps, femoralTriceps, calfs
    }
    
    let name: String
    let targetMuscle: Muscle
    private let isLiked: Bool?
    //let showcase: Video?
    
    init(name: String, targetMuscle: Muscle, isLiked: Bool?) {
        self.name = name
        self.targetMuscle = targetMuscle
        self.isLiked = isLiked
    }
}
