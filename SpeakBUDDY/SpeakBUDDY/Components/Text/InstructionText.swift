//
//  InstructionText.swift
//  SpeakBUDDY
//
//  Created by Pablo Trabajos on 03/12/2023.
//

import SwiftUI

struct InstructionText: View {
    let title: String
    
    var body: some View {
        Text(title)
            .applyInstructionStyle()
    }
}
