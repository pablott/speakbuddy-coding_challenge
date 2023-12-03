//
//  BarArray.swift
//  SpeakBUDDY
//
//  Created by Pablo Trabajos on 03/12/2023.
//

import SwiftUI

struct BarArray: View {
    var data: [BarData]
    var body: some View {
        HStack(spacing: 15) {
            ForEach(Array(data.enumerated()), id: \.0.self) { index, item in
                Bar(data: item)
                    .tag(index)
            }
        }
    }
}
