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
            // MARK: Close button
            Spacer()
            HStack {
                Spacer()
                    CloseButton {
                        print("Close was tapped")
                    }
                    // The PDF states "the size of each component should be adjusted according to screen size".
                    // I think this should not be done. Better to follow Apple's HIG for tappable elements.
                    .scaleBasedOnScreenSize()
                    .padding(.trailing, 10)
            }

            // MARK: Title
            MainTitle(title: "Hello\nSpeakBUDDY")
            
            // MARK: Bar array
            Spacer(minLength: 32)
            HStack {
                BarArray(data: model.arrayData)
                    .frame(minHeight: 100, maxHeight: 500)
                    .padding(.horizontal, 40)
            }
            .overlay {
                // MARK: Protty
                GeometryReader { geometry in
                    Image("protty")
                        .resizable()
                        .scaledToFit()
                        .frame(height: geometry.size.height * Constants.prottySizeFactor)
                        .position(
                            x: geometry.size.width * Constants.prottyPositionFactor,
                            y: geometry.size.height * Constants.prottyPositionFactor
                        )
                }
            }
            
            // MARK: Instructions
            Spacer(minLength: 16)
            InstructionText(title: "スピークバディで")
            DecoratedText(title: "レベルアップ")
            
            // MARK: CTA button
            CTAButton(title: "プランに登録する") {
                print("Sign up was tapped")
                model.loadRandomValues()
            }
            .frame(minWidth: 230, maxWidth: 400)
            
            Spacer(minLength: 16)
        }
        .padding()
        .background(Gradients().bgGradient)
        .onAppear {
            model.loadInitialValues()
        }
    }
}

#Preview {
    ContentView()
}
