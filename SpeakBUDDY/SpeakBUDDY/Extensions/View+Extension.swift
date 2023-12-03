//
//  View+Extension.swift
//  SpeakBUDDY
//
//  Created by Pablo Trabajos on 03/12/2023.
//

import SwiftUI
import UIKit

// These extensions applies view modifiers to views.
// The same effect can be accomplished with extension only,
// but modifiers can hold state in case we needed.
extension View {
    // MARK: - Text
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
    
    // MARK: - Button
    func applyCTAButtonStyle() -> some View {
        modifier(CTAButtonStyle())
    }
    
    func applyCloseButtonStyle() -> some View {
        modifier(CloseButtonStyle())
    }
    
    // MARK: - Shadow
    func applyButtonShadow() -> some View {
        modifier(ShadowStyle())
    }

    // MARK: - Scale
    func scaleBasedOnScreenSize() -> some View {
        // This is a rudimentary implementation.
        // There are better ways of detecting this,
        // like a table of screens sizes or querying device info
        let factor: CGFloat = UIScreen.main.bounds.width > 600
            ? Constants.bigScreenFactor
            : 1
        return modifier(SizeModifier(factor: factor))
    }
}
