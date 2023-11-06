//
//  WorkoutBuilder.swift
//  7 Minute Workout
//
//  Created by Vito Borghi on 04/11/2023.
//

import Foundation

protocol Builder {
    func addName(_ name: String)
    func setCycles(_ cycles: Int)
    func setIntensity(_ intensity: Int)
}

class WorkoutBuilder: Builder {
    
    var product = Workout()

    func setCycles(_ cycles: Int) {
        <#code#>
    }
    
    func setIntensity(_ intensity: Int) {
        <#code#>
    }
    func addName(_ name String) {
        product.name = name
    }
    
    func addExercise(for muscle: Muscle){
        
    }
}
