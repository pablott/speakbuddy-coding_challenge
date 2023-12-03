//
//  Styling.swift
//  SpeakBUDDY
//
//  Created by Pablo Trabajos on 03/12/2023.
//

import SwiftUI

// MARK: - Text
struct TitleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color("textColor"))
            .multilineTextAlignment(.center)
    }
}

struct InstructionStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundColor(Color("textColor"))
            .multilineTextAlignment(.center)
    }
}

struct DecoratedStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .fontWeight(.black)
            .foregroundStyle(Gradients().barGradient)
            .multilineTextAlignment(.center)
    }
}

struct LabelStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.footnote)
            .fontWeight(.black)
            .foregroundColor(Color("textColor"))
            .multilineTextAlignment(.center)
    }
}



// MARK: - Buttons
struct CTAButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
            .fontWeight(.semibold)
            .padding(16)
            .foregroundColor(Color("buttonForegroundColor"))
            .background(Color("buttonBackgroundColor"))
            .clipShape(RoundedRectangle(cornerRadius: 40))
            .overlay {
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color("buttonBorderColor"))
            }
            .multilineTextAlignment(.center)
            .buttonStyle(.plain)
    }
}

struct CloseButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.caption)
            .fontWeight(.black)
            .padding(10)
            .foregroundColor(Color("textColor"))
            .background(Color("closeButtonBackgroundColor"))
            .clipShape(Circle())
            .buttonStyle(.plain)
    }
}

// MARK: - Shadow
struct ShadowStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color("shadowColor"), radius: 6, x: 0, y:3)

    }
}
