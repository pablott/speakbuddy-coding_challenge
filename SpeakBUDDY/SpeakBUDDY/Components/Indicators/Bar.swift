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
    let labelHeight = 30.0
    var data: BarData
    
    var body: some View {
        GeometryReader { geometry in
            VStack (spacing: 0) {
                Spacer(minLength: 0)
                Rectangle()
                    .fill(Gradients().barGradient)
                    .frame(height: (data.value * (geometry.size.height - labelHeight)) )
                    .clipShape(UnevenRoundedRectangle(cornerRadii: RectangleCornerRadii(topLeading: 8, bottomLeading: 0, bottomTrailing: 0, topTrailing: 8)))
                
                Text(data.label)
                    .frame(height: labelHeight)
                    .applyLabelStyle()
            }
            // TODO: debug only, remove later
            .overlay {
                Text("\(String(format: "%.2f", geometry.size.height))")
                    .font(.footnote)
                    .padding(.bottom, 32)
                Text("\(String(format: "%.2f", data.value * (geometry.size.height - labelHeight)))")
                    .font(.footnote)
            }
        }
    }
}
