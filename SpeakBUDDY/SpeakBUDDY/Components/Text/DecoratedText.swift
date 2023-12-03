//
//  DecoratedText.swift
//  SpeakBUDDY
//
//  Created by Pablo Trabajos on 03/12/2023.
//

import SwiftUI

struct DecoratedText: View {
    let title: String
    
    var body: some View {
        Text(title)
            .applyDecoratedStyle()
    }
}
