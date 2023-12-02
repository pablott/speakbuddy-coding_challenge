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
            HStack {
                Spacer()
                CloseButton {
                    print("Close was tapped")
                }
            }

            Text("Hello\nSpeakBUDDY")
                .font(.largeTitle)
            Image("protty")
            Rectangle()
                .fill(Gradients().barGradient)
            Text("スピークバディで")
            Text("レベルアップ")
                .background(Gradients().barGradient)

            CTAButton(title: "プランに登録する") {
                print("Sign up was tapped")
            }
            .frame(width: .infinity)
            .padding(.horizontal, 16)
            
        }
        .padding()
        .background(Gradients().bgGradient)

    }
}

#Preview {
    ContentView()
}
