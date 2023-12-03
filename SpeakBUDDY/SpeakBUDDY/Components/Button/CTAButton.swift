//
//  CTAButton.swift
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
                // Set to .infinity so it fills the frame according to parent
                .frame(maxWidth: .infinity)
                .applyCTAButtonStyle()
        }
        .applyButtonShadow()
    }
}
