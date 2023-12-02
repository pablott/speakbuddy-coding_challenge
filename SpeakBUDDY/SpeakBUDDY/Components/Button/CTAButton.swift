//
//  Button.swift
//  SpeakBUDDY
//
//  Created by Pablo Trabajos on 03/12/2023.
//

import SwiftUI

struct CTAButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .padding(20)
                .foregroundColor(Color("buttonForegroundColor"))
                .background(Color("buttonBackgroundColor"))
        }
        .clipShape(RoundedRectangle(cornerRadius: 40))
        .overlay {
            RoundedRectangle(cornerRadius: 40)
                .stroke(Color("buttonBorderColor"))
        }
        .applyButtonShadow()
        .buttonStyle(.plain)
    }
}
