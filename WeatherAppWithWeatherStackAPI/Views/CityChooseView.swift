//
//  CityChooseView.swift
//  WeatherAppWithWeatherStackAPI
//
//  Created by Камаль Атавалиев on 18.05.2023.
//

import SwiftUI
import Alamofire

struct CityChooseView: View {
    let weather = NetworkManager.shared
    
    var body: some View {
        VStack {
            Image("mainPic")
                .resizable()
                .frame(width: 250, height: 250)
            Button(action: buttonAction) {
                Text("Choose city")
                    .frame(width: 150, height: 60)
                    .foregroundColor(.white)
            }
            .frame(width: 130, height: 70)
            .background(.blue)
            .cornerRadius(20)
            .padding(.top, 100)
            
            Spacer()
            
        }
        .padding()
    }
    
    func buttonAction() {
        weather.fetchWeather(from: "http://api.weatherstack.com/current?access_key=c414a7f553e3b40344a3d8ff36490ac5&query=Bishkek") { result in
            print(result)
        }
    }
    


    struct CityChooseView_Previews: PreviewProvider {
        static var previews: some View {
            CityChooseView()
        }
    }
}
