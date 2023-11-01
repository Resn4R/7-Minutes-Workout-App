//
//  WorkoutLibraryView.swift
//  7 Minute Workout
//
//  Created by Vito Borghi on 01/11/2023.
//

import SwiftUI

struct WorkoutLibraryItem: View {
    var body: some View {
        HStack{
            ZStack {
                Text("EASY")
                    .font(.callout)
                    .bold()
                    .background(in: Circle())
                }
            Text("BEGINNER ALTERNATE 7 MINUTES")
                .fontDesign(.serif)
        }
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
                
                Section {
                    VStack{
                        WorkoutLibraryItem()
                            .padding()
                        WorkoutLibraryItem()
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    WorkoutLibraryView()
}
