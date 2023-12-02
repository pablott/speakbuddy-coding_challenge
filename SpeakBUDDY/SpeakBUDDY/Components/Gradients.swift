//
//  Gradients.swift
//  SpeakBUDDY
//
//  Created by Pablo Trabajos on 02/12/2023.
//

import SwiftUI

struct Gradients {
    var bgGradient = LinearGradient(
        gradient: Gradient(colors: [Color("bgGradient1"), Color("bgGradient2")]),
        startPoint: UnitPoint(x: 0, y: 0),
        endPoint: UnitPoint(x: 1, y: 1)
    )
    var barGradient = LinearGradient(
        gradient: Gradient(colors: [Color("blueGradient1"), Color("blueGradient2")]),
        startPoint: UnitPoint(x: 0, y: 1),
        endPoint: UnitPoint(x: 0, y: 0)
    )
}
