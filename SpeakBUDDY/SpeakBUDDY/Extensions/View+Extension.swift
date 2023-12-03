//
//  View+Extension.swift
//  SpeakBUDDY
//
//  Created by Pablo Trabajos on 03/12/2023.
//

import SwiftUI

// These extensions applies view modifiers to views.
// The same effect can be accomplished with extension only,
// but modifiers can hold state in case we needed.
extension View {
    func applyCTAButtonStyle() -> some View {
        modifier(CTAButtonStyle())
    }
    
    func applyCloseButtonStyle() -> some View {
        modifier(CloseButtonStyle())
    }
    
    func applyButtonShadow() -> some View {
        modifier(ShadowStyle())
    }
}
