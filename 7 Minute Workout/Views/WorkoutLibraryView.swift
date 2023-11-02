//
//  WorkoutLibraryView.swift
//  7 Minute Workout
//
//  Created by Vito Borghi on 01/11/2023.
//
import SwiftData
import SwiftUI

struct CreateCustomWorkout: View {
    var body: some View {
        NavigationLink {
            //link to creation view
        } label: {
            HStack{
                Image(systemName: "plus.circle")
                Text("Create Custom Workout")
                    .fontDesign(.serif)
                    .foregroundStyle(.black)
            }
        }
    }
}

struct PresetWorkoutItem: View {
    let workout: Workout
    var body: some View {
        NavigationLink {
            //link to detail view
        } label: {
            HStack{
                ZStack {
                    Circle()
                        .stroke(lineWidth: 2)
                        .frame(width: 50, height: 50)
                    Text(workout.intensityDictionary[workout.intensity] ?? "?")
                        .font(.callout)
                        .foregroundStyle(.black)
                        .bold()
                }
                Text(workout.name ?? "Unnamed Workout")
                    .fontDesign(.serif)
                    .foregroundStyle(.black)
            }
        }
    }
}

struct PresetsWorkoutLibrary: View {
    var workoutLibrary: [Workout]
    var body: some View {
        Section {
            ForEach(workoutLibrary) {workout in
                VStack{
                    PresetWorkoutItem(workout: workout)
                        .padding()
                    Divider()
                        .padding()
                }
            }
        }
    }
}

struct CustomWorkoutLibrary: View {
    var body: some View {
        VStack{
            ContentUnavailableView("No Custom workouts present", image: "figure.run.circle", description: Text("Tap on the plus symbol to add your custom workout."))
            CreateCustomWorkout()
        }
    }
}

struct WorkoutLibraryView: View {
    private func loadWorkouts () {
        let fetchDescriptor = FetchDescriptor<Workout>(sortBy: [SortDescriptor(\Workout.intensity)])
           
           do {
                workoutLibrary = try modelContext.fetch(fetchDescriptor)
           } catch {
               print("Error initialising model context: \(error.localizedDescription)")
           }
    }

    @Environment(\.modelContext) var modelContext
    private let libraryTypes = ["Presets", "Custom"]
    @State private var library = "Presets"
    @State private var workoutLibrary = [Workout]()
    
    var body: some View {
        NavigationStack{
            VStack{
                Section {
                    Picker("", selection: $library) {
                        ForEach(libraryTypes, id: \.self) { type in
                            Text(type)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                if library == "Presets" {
                    PresetsWorkoutLibrary(workoutLibrary: workoutLibrary)
                } else { CustomWorkoutLibrary() }
                
                Spacer()
                
            }
        }
        .onAppear(perform: loadWorkouts)
    }
}

#Preview {
    WorkoutLibraryView()
}
