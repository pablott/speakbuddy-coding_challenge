//
//  ContentView.swift
//  SpeakBUDDY
//
//  Created by Pablo Trabajos on 02/12/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var model = DataSource()
    
    var body: some View {
        VStack {
            // Close button
            Spacer()
            HStack {
                Spacer()
                CloseButton {
                    print("Close was tapped")
                }
            }

            // Title
            MainTitle(title: "Hello\nSpeakBUDDY")
            
            // Bar array
            Spacer(minLength: 32)
            HStack {
                BarArray(data: model.arrayData)
                    .frame(minHeight: 100, maxHeight: 500)
                    .padding(.horizontal, 40)
            }
            .overlay {
                // Protty
                Image("protty")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 130)
                    .position(x: 80, y: 40)
            }
            
            // Instructions
            Spacer(minLength: 16)
            InstructionText(title: "スピークバディで")
            DecoratedText(title: "レベルアップ")
            
            // CTA button
            CTAButton(title: "プランに登録する") {
                print("Sign up was tapped")
            }
            .frame(minWidth: 230, maxWidth: 400)
            
            Spacer(minLength: 16)
        }
        .padding()
        .background(Gradients().bgGradient)
    }
}

#Preview {
    ContentView()
}
