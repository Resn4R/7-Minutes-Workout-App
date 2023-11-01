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
                    Text("Hello, ready to get better?")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .fontDesign(.serif)
                        .bold()
                    
                    Button{
                        //action
                    } label: {
                        Text("Workout Library")
                            .font(.headline)
                            .foregroundStyle(.black)
                            .frame(width: 200, height: 100)
                            .background(.accent)
                            
                    }
                    
                }
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    MainMenu()
}
