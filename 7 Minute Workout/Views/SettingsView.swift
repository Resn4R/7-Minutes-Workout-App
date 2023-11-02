//
//  SettingsView.swift
//  7 Minute Workout
//
//  Created by Vito Borghi on 01/11/2023.
//
import SwiftData
import SwiftUI

struct SettingsView: View {
    @Environment(\.modelContext) var modelContext
    @Query var user: User
    
    @State private var healthKitConnected = false
    @State private var formAudioPrompt = false
    @State private var motivationalAudioPrompts = false
    @State private var WorkoutReminder = false
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading) {
                NavigationLink(destination: LikedExercisesView()) {
                    Text("EXERCISES LIKED & DISLIKED")
                        .bold()
                }
                
                .padding(.horizontal)
                Divider()
                .padding()
                
                Toggle(isOn: Bindable(user).healthKitConnected){
                    Label("Connect Apple Health", systemImage: "heart.circle")
                        .foregroundStyle( healthKitConnected ? .red : .primary)
                }
                
                .padding(.horizontal)
                Divider()
                .padding()
                
                Section{
                    Toggle(isOn: Bindable(user).formAudioPrompt, label: {
                        Label("Exercise Form Audio Prompts", systemImage: "figure.strengthtraining.traditional")
                    })
                    Toggle(isOn: Bindable(user).motivationalAudioPrompt, label: {
                        Label("Motivational Audio Prompts", systemImage: "figure.mixed.cardio")
                    })
                } header: {
                    Text("Audio")
                }
                
                .padding(.horizontal)
                Divider()
                .padding()
                
                Toggle(isOn: Bindable(user).workoutReminder, label: {
                    Label("Workout Reminder", systemImage: "dumbbell.fill")
                })
                
                .padding(.horizontal)
                Divider()
                .padding()
                
                
                Spacer()
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    SettingsView()
}
