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
    // Text
    func applyTitleStyle() -> some View {
        modifier(TitleStyle())
    }
    
    func applyInstructionStyle() -> some View {
        modifier(InstructionStyle())
    }
    
    func applyDecoratedStyle() -> some View {
        modifier(DecoratedStyle())
    }
    
    func applyLabelStyle() -> some View {
        modifier(LabelStyle())
    }
    
    // Button
    func applyCTAButtonStyle() -> some View {
        modifier(CTAButtonStyle())
    }
    
    func applyCloseButtonStyle() -> some View {
        modifier(CloseButtonStyle())
    }
    
    // Shadow
    func applyButtonShadow() -> some View {
        modifier(ShadowStyle())
    }
}
