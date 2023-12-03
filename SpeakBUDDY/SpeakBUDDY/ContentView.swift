//
//  ContentView.swift
//  SpeakBUDDY
//
//  Created by Pablo Trabajos on 02/12/2023.
//

import SwiftUI

struct ContentView: View {
    let arrayData: [BarData] = [
        BarData(value: 0.2, label: "現在"),
        BarData(value: 0.33, label: "3ヶ月"),
        BarData(value: 0.7, label: "1年"),
        BarData(value: 1, label: "2年"),

    ]
    
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
                BarArray(data: arrayData)
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
            
            Spacer(minLength: 16)
        }
        .padding()
        .background(Gradients().bgGradient)
    }
}

#Preview {
    ContentView()
}
