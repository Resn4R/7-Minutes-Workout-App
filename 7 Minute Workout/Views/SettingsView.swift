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
    @State private var user = User()
    
    @State private var healthKitConnected = false
    @State private var formAudioPrompt = false
    @State private var motivationalAudioPrompts = false
    @State private var WorkoutReminder = false
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading) {

                NavigationLink(destination: LikedExercisesView()) {
                    Label("Exercises liked & disliked", systemImage: "heart.fill")
                }
                .offset(y:10)
                
                .padding(.horizontal)
                Divider()
                .padding()
                
                Toggle(isOn: Bindable(user).healthKitConnected){
                    Label("Connect Apple Health", systemImage: "heart.circle")
                        .foregroundStyle(user.healthKitConnected ? .red : .primary)
                        
                }
                
                .padding(.horizontal)
                Divider()
                .padding()
                
                Section{
                    Toggle(isOn: Bindable(user).formAudioPrompt){
                        Label("Exercise Form Audio Prompts", systemImage: "figure.strengthtraining.traditional")
                    }
                    Toggle(isOn: Bindable(user).motivationalAudioPrompt){
                        Label("Motivational Audio Prompts", systemImage: "figure.mixed.cardio")
                    }
                } header: {
                    Text("Audio")
                }
                
                .padding(.horizontal)
                Divider()
                .padding()
                
                Section {
                    Toggle(isOn: Bindable(user).workoutReminder) {
                        Label("Workout Reminder", systemImage: "dumbbell.fill")
                    }
                    
                    Toggle(isOn: Bindable(user).inactivityReminder) {
                        Label("Inactivity Reminder", systemImage: "sofa.fill")
                    }
                } header: {
                    Text("Reminders")
                }
                
                .padding(.horizontal)
                Divider()
                .padding()
                
                NavigationLink { AboutView() } label: {
                    
                    Label("About this app", systemImage: "doc.text.magnifyingglass")
                }
                
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
