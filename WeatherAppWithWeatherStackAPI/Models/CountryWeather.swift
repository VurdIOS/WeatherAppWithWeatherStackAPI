//
//  CountryWeather.swift
//  WeatherAppWithWeatherStackAPI
//
//  Created by Камаль Атавалиев on 21.05.2023.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct CountryWeather: Codable {
    let location: Location
    let request: Request
    let current: Current
}

// MARK: - Current
struct Current: Codable {
    let temperature: Int
    let weatherIcons: [String]
    let weatherDescriptions: [String]

    enum CodingKeys: String, CodingKey {
        case temperature
        case weatherIcons = "weather_icons"
        case weatherDescriptions = "weather_descriptions"
    }
}

// MARK: - Location
struct Location: Codable {
    let country: String
    let localtime: String
    let name: String
    let region: String


}

// MARK: - Request
struct Request: Codable {
    let type, query, language, unit: String
}
