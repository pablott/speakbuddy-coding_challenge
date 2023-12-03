//
//  BarArray.swift
//  SpeakBUDDY
//
//  Created by Pablo Trabajos on 03/12/2023.
//

import SwiftUI

struct BarArray: View {
    let data: [BarData]
    
    var body: some View {
        // Geometry proxy is used to adjust bar spacing depending on screen sizes.
        // More sophisticated rules could be added here.
        GeometryReader { geometry in
            HStack(spacing: (geometry.size.width / CGFloat(data.count)) * Constants.barSpacingFactor) {
                ForEach(Array(data.enumerated()), id: \.0.self) { index, item in
                    Bar(data: item)
                        .tag(index)
                }
            }
        }
    }
}
