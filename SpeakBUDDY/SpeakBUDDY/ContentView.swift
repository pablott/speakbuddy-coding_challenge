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
            Button {
                print("Close was tapped")
            } label: {
                Image(systemName: "xmark")
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(Color("textColor"))
                    .background(.gray)
                    .clipShape(Circle())
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }


            Text("Hello\nSpeakBUDDY")
                .font(.largeTitle)
            Image("protty")
            Rectangle()
                .fill(Gradients().barGradient)
            Text("スピークバディで")
            Text("レベルアップ")
                .background(Gradients().barGradient)

            Button("プランに登録する") {
                print("Sign up was tapped")
            }
            .background(Color("buttonColor"))
        }
        .padding()
        .background(Gradients().bgGradient)

    }
}

#Preview {
    ContentView()
}
