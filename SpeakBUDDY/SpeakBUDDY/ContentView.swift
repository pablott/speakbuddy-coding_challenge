//
//  ContentView.swift
//  SpeakBUDDY
//
//  Created by Pablo Trabajos on 02/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer().frame(height: 16)
            
            // Close button
            HStack {
                Spacer()
                CloseButton {
                    print("Close was tapped")
                }
            }

            // Title
            MainTitle(title: "Hello\nSpeakBUDDY")
            
            // Protty
            Image("protty")
            
            // Bar array
            // TODO: make array with HStack and data[]
            Spacer()
            Rectangle()
                .fill(Gradients().barGradient)
                .frame(width: 58, height: 100)
                .clipShape(UnevenRoundedRectangle(cornerRadii: RectangleCornerRadii(topLeading: 8, bottomLeading: 0, bottomTrailing: 0, topTrailing: 8)))
            
            // Instructions
            Spacer().frame(height: 16)
            InstructionText(title: "スピークバディで")
            DecoratedText(title: "レベルアップ")
            
            // Buttons
            CTAButton(title: "プランに登録する") {
                print("Sign up was tapped")
            }
            
            Spacer().frame(height: 16)
        }
        .padding()
        .background(Gradients().bgGradient)
    }
}

#Preview {
    ContentView()
}
