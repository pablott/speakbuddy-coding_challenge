//
//  CloseButton.swift
//  SpeakBUDDY
//
//  Created by Pablo Trabajos on 03/12/2023.
//

import SwiftUI

struct CloseButton: View {
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "xmark")
                .fontWeight(.black)
                .padding(12)
                .foregroundColor(Color("textColor"))
                .background(Color("closeButtonBackgroundColor"))
                .clipShape(Circle())
                .applyButtonShadow()
        }
    }
}
