//
//  WorkoutLibraryView.swift
//  7 Minute Workout
//
//  Created by Vito Borghi on 01/11/2023.
//

import SwiftUI

struct WorkoutLibraryItem: View {
    var body: some View {
        NavigationLink {
            //link to detail view
        } label: {
            HStack{
                ZStack {
                    Circle()
                        .stroke(lineWidth: 2)
                        .frame(width: 50, height: 50)
                    Text("EASY")
                        .font(.callout)
                        .foregroundStyle(.black)
                        .bold()
                }
                Text("BEGINNER ALTERNATE 7 MINUTES")
                    .fontDesign(.serif)
                    .foregroundStyle(.black)
            }
        }
    }
}

struct PresetsWorkoutLibrary: View {
    var body: some View {
        Section {
            VStack{
                WorkoutLibraryItem()
                    .padding()
                Divider()
                    .padding()
                WorkoutLibraryItem()
            }
        }    }
}

struct CustomWorkoutLibrary: View {
    var body: some View {
        ContentUnavailableView("No Custom workout present", image: "figure.run.circle", description: Text("Tap on the plus symbol to add your custom workout."))
    }
}

struct WorkoutLibraryView: View {
    private let libraryTypes = ["Presets", "Custom"]
    @State private var library = "Presets"
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
                    PresetsWorkoutLibrary()
                } else { CustomWorkoutLibrary() }
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    WorkoutLibraryView()
}
