//
//  WorkoutDatabase.swift
//  7 Minute Workout
//
//  Created by Vito Borghi on 06/11/2023.
//
import SwiftData
import Foundation

@Model
class WorkoutDatabase {
    
        
    func readLocalJSONFile(forName name: String) -> Data? {
        do {
            if let filePath = Bundle.main.path(forResource: name, ofType: "json") {
                let fileUrl = URL(fileURLWithPath: filePath)
                let data = try Data(contentsOf: fileUrl)
                return data
            }
        } catch {
            print("error: \(error)")
        }
        return nil
    }
    
    
    func parse(jsonData: Data) -> Exercise? {
        do {
            let decodedData = try JSONDecoder().decode(Exercise.self, from: jsonData)
            return decodedData
        } catch {
            print("error: \(error)")
        }
        return nil
    }
}
