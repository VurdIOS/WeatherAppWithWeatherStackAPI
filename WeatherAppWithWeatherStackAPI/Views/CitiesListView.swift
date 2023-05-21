//
//  CitiesListView.swift
//  WeatherAppWithWeatherStackAPI
//
//  Created by Камаль Атавалиев on 18.05.2023.
//

import SwiftUI

struct CitiesListView: View {
    
    
    let countries = Country.countriesList()
        
    
    var body: some View {

        NavigationStack {
            List(countries) { country in
                NavigationLink(destination: CityWeatherView(country: country)) {
                    Text(country.name)
                }
            }
            .navigationTitle("Countries")
            .listStyle(.plain)
        }
    }
}


struct CitiesListView_Previews: PreviewProvider {
    static var previews: some View {
        
        CitiesListView()
    }
}
