//
//  MainTitle.swift
//  SpeakBUDDY
//
//  Created by Pablo Trabajos on 03/12/2023.
//

import SwiftUI

struct MainTitle: View {
    let title: String
    
    var body: some View {
        Text(title)
            .foregroundColor(Color("textColor"))
            .font(.largeTitle)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
    }
}
