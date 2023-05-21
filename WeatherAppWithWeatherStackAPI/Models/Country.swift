//
//  Country.swift
//  WeatherAppWithWeatherStackAPI
//
//  Created by Камаль Атавалиев on 18.05.2023.
//

import Foundation

struct Country: Hashable, Identifiable{
    
    let id = UUID()
    let name: String
    
    
    static func countriesList() -> [Country] {
        let countries = DataStore.shared.countries
        
        var countryList: [Country] = []
        
        for index in 0..<countries.count {
            countryList.append(Country(name: countries[index]))
        }
        return countryList
    }
}
