//
//  ContentView.swift
//  7 Minute Workout
//
//  Created by Vito Borghi on 31/10/2023.
//

import SwiftUI

struct MainMenu: View {
    @State private var showSettingSheet = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                Image(.mainMenuBackground)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: .infinity, height: .infinity) // Set the initial size of the image
                    .scaleEffect(2.0)
                    .blur(radius: 2)
                VStack {
                    Text("Ready to get better?")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .fontDesign(.serif)
                        .bold()
                        .offset(y: -40)
                        .padding(.vertical,30)
                    
                    Section {
                        NavigationLink(destination: WorkoutLibraryView()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .frame(width: 300, height: 100)
                                HStack{
                                    Image(systemName: "play.circle")
                                    Text("7 Minutes Workout")
                                        .font(.headline)
                                }
                                .foregroundStyle(.black)
                            }
                        }
                        .offset(y: 7)
                        .padding()
                        
                        NavigationLink(destination: WorkoutView()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .frame(width: 300, height: 100)
                                HStack{
                                    Image(systemName: "play.circle")
                                    Text("SMART Workout")
                                        .font(.headline)
                                }
                                .foregroundStyle(.black)
                            }
                        }
                        
                        .padding()
                        
                        NavigationLink(destination: WorkoutView()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .frame(width: 300, height: 100)
                                HStack{
                                    Image(systemName: "play.circle")
                                    Text("Workout Library")
                                        .font(.headline)
                                }
                                .foregroundStyle(.black)
                            }
                        }
                        .padding()
                    }
                        .fontWeight(.bold)
                }
            }
            .ignoresSafeArea()
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        showSettingSheet.toggle()
                    } label: {
                        Image(systemName: "gearshape.fill")
                            .resizable()
                            .imageScale(.large)
                    }
                }
            }
            .sheet(isPresented: $showSettingSheet) {
                SettingsView()
            }
        }
    }
}

#Preview {
    MainMenu()
}
