//
//  SplashScreenView.swift
//  SplashScreen
//
//  Created by Akshay Jha on 13/09/24.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive:Bool = false
    @State var size = 0.2
    @State var opacity = 0.4
    var body: some View {
        if(isActive){
            ContentView()
        }
        else{
            VStack{
                Image("quickCutslogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 150)
                
                Text("QuickCuts")
                    .foregroundStyle(.black)
                    .font(.system(size: 40))
                    .bold()
                    .opacity(0.6)
                    
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear{
                withAnimation(.easeIn(duration: 1.0)){
                    self.size = 1.2
                    self.opacity = 1.2
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now()+1.5){
                    withAnimation{
                        self.isActive = true
                        
                    }
                    
                }
            }
            
        }
    }
}

#Preview {
    SplashScreenView()
}
