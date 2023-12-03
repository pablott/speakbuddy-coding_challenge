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
                .applyCTAButtonStyle()
        }
        .applyButtonShadow()
    }
}
