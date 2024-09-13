//
//  ContentView.swift
//  SplashScreen
//
//  Created by Akshay Jha on 13/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.orange
                .ignoresSafeArea()
            
            Text("Home Screen Of QuickCuts App")
                .foregroundStyle(Color.white)
                .font(.system(size: 30))
                .bold()
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
