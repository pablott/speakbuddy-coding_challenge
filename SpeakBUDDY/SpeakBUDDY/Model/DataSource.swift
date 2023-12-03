//
//  DataSource.swift
//  SpeakBUDDY
//
//  Created by Pablo Trabajos on 03/12/2023.
//

import Foundation

class DataSource: ObservableObject {
    @Published var arrayData: [BarData] = [
        BarData(value: 0.2, label: "現在"),
        BarData(value: 0.33, label: "3ヶ月"),
        BarData(value: 0.7, label: "1年"),
        BarData(value: 1, label: "2年"),
    ]
}
