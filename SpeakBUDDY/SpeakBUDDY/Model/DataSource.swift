//
//  DataSource.swift
//  SpeakBUDDY
//
//  Created by Pablo Trabajos on 03/12/2023.
//

import Foundation

class DataSource: ObservableObject {
    @Published var arrayData: [BarData] = [
        BarData(value: 0, label: "現在"),
        BarData(value: 0, label: "3ヶ月"),
        BarData(value: 0, label: "1年"),
        BarData(value: 0, label: "2年"),
    ]
    
    private let initialValues: [BarData] = [
        BarData(value: 0.2, label: "現在"),
        BarData(value: 0.33, label: "3ヶ月"),
        BarData(value: 0.7, label: "1年"),
        BarData(value: 1, label: "2年"),
    ]
    
    func loadInitialValues() {
        arrayData = initialValues
    }
    
    func loadRandomValues() {
        // Iterate array but give a random, normalized value
        for index in arrayData.enumerated() {
            arrayData[index.offset].value = CGFloat.random(in: 0.0...1.0)
        }
    }
}
