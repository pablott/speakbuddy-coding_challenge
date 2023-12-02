//
//  Styling.swift
//  SpeakBUDDY
//
//  Created by Pablo Trabajos on 03/12/2023.
//

import SwiftUI

extension View {
    func applyButtonShadow() -> some View {
        self.shadow(color: Color("shadowColor"), radius: 6, x: 0, y:3)
    }
}
