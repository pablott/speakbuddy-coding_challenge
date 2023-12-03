//
//  Bar.swift
//  SpeakBUDDY
//
//  Created by Pablo Trabajos on 03/12/2023.
//

import SwiftUI

struct BarData: Hashable {
    var value: CGFloat  // Use a 0.0-1.0 normalized value
    var label: String
}

struct Bar: View {
    // Substract label height so the normalized bars
    // can be calculated and placed correctly
    private let labelHeight = 30.0
    let data: BarData
    
    var body: some View {
        GeometryReader { geometry in
            VStack (spacing: 0) {
                Spacer(minLength: 0)
                Rectangle()
                    .fill(Gradients().barGradient)
                    .frame(height: (data.value * (geometry.size.height - labelHeight)) )
                    .clipShape(UnevenRoundedRectangle(cornerRadii: RectangleCornerRadii(topLeading: 8, bottomLeading: 0, bottomTrailing: 0, topTrailing: 8)))
                    .animation(.easeInOut(duration: Constants.barAnimationTiming), value: data.value)
                
                Text(data.label)
                    .frame(height: labelHeight)
                    .applyLabelStyle()
            }
        }
    }
}
