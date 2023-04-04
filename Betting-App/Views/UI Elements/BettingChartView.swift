//
//  BettingChartView.swift
//  Betting-App
//
//  Created by Petar Iliev on 4.4.23.
//

import SwiftUI
import Charts

struct BettingChartView: View {
    var body: some View {
        VStack {
            Chart {
                ForEach(mockData) { item in
                    LineMark(
                        x: .value("Month", item.date),
                        y: .value("Temp", item.odds)
                    )
                }
            }
            .frame(height: 220)
            .foregroundColor(Color(uiColor: UIColor(named: "Flat Orange")!))
        }
    }
}

let mockData = [
    WeatherData(year: 2023, month: 4, day: 4, hour: 10, minute: 35, odds: 0.56),
    WeatherData(year: 2023, month: 4, day: 4, hour: 10, minute: 36, odds: 0.57),
    WeatherData(year: 2023, month: 4, day: 4, hour: 10, minute: 37, odds: 0.58),
    WeatherData(year: 2023, month: 4, day: 4, hour: 10, minute: 38, odds: 0.6),
    WeatherData(year: 2023, month: 4, day: 4, hour: 10, minute: 39, odds: 0.55),
    WeatherData(year: 2023, month: 4, day: 4, hour: 10, minute: 40, odds: 0.5),
    WeatherData(year: 2023, month: 4, day: 4, hour: 10, minute: 41, odds: 0.45),
    WeatherData(year: 2023, month: 4, day: 4, hour: 10, minute: 42, odds: 0.35),
    WeatherData(year: 2023, month: 4, day: 4, hour: 10, minute: 43, odds: 0.25),
    WeatherData(year: 2023, month: 4, day: 4, hour: 10, minute: 44, odds: 0.5),
    WeatherData(year: 2023, month: 4, day: 4, hour: 10, minute: 45, odds: 0.6),
    WeatherData(year: 2023, month: 4, day: 4, hour: 10, minute: 46, odds: 0.7),
    WeatherData(year: 2023, month: 4, day: 4, hour: 10, minute: 47, odds: 0.71),
    WeatherData(year: 2023, month: 4, day: 4, hour: 10, minute: 48, odds: 0.72),
    WeatherData(year: 2023, month: 4, day: 4, hour: 10, minute: 49, odds: 0.73),
    WeatherData(year: 2023, month: 4, day: 4, hour: 10, minute: 50, odds: 0.74),
    WeatherData(year: 2023, month: 4, day: 4, hour: 10, minute: 51, odds: 0.75),
    WeatherData(year: 2023, month: 4, day: 4, hour: 10, minute: 52, odds: 0.8),
]

// Odds at a specific point in time
struct WeatherData: Identifiable {
    let id = UUID()
    let date: Date
    // Referes to odds of event 1 occuring, odds of event 2 occuring can be calculated by subtracting this number from 1
    let odds: Double
 
    init(year: Int, month: Int, day: Int, hour: Int, minute: Int, odds: Double) {
        self.date = Calendar.current.date(from: .init(year: year, month: month, day: day, hour: hour, minute: minute)) ?? Date()
        self.odds = odds
    }
}

