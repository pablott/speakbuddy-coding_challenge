//
//  Styling.swift
//  SpeakBUDDY
//
//  Created by Pablo Trabajos on 03/12/2023.
//

import SwiftUI

struct CTAButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: FontSize.button.rawValue).weight(.semibold))
            .padding(20)
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
            .font(.system(size: FontSize.icon.rawValue).weight(.black))
            .padding(12)
            .foregroundColor(Color("textColor"))
            .background(Color("closeButtonBackgroundColor"))
            .clipShape(Circle())
            .buttonStyle(.plain)
    }
}

struct ShadowStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color("shadowColor"), radius: 6, x: 0, y:3)

    }
}
