//
//  CityWeatherView.swift
//  WeatherAppWithWeatherStackAPI
//
//  Created by Камаль Атавалиев on 18.05.2023.
//

import SwiftUI

struct CityWeatherView: View {
    
    let country: Country
    
    var body: some View {
        Text(country.name)
    }
}

struct CityWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        CityWeatherView(country: Country(name: "aa"))
    }
}
