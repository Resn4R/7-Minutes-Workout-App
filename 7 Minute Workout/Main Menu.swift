//
//  ContentView.swift
//  7 Minute Workout
//
//  Created by Vito Borghi on 31/10/2023.
//

import SwiftUI

struct MainMenu: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image(.mainMenuBackground)
                    .resizable()
                    .blur(radius: 2)
                VStack(alignment: .center) {
                    Text("Hello.\nReady to get better?")
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
                                    Text("Workout Library")
                                        .font(.headline)
                                }
                                .foregroundStyle(.black)
                            }
                        }
                        .padding()
                        NavigationLink(destination: WorkoutLibraryView()) {
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
                        .padding()
                    }
                }
            }
            .ignoresSafeArea()
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink {
                        //
                    } label: {
                        Label("Settings", image: "gear")
                    }

                }
            }
        }
    }
}

#Preview {
    MainMenu()
}