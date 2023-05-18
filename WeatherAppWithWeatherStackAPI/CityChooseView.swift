//
//  CityChooseView.swift
//  WeatherAppWithWeatherStackAPI
//
//  Created by Камаль Атавалиев on 18.05.2023.
//

import SwiftUI

struct CityChooseView: View {
    
    
    var body: some View {
        VStack {
            Image("mainPic")
                .resizable()
                .frame(width: 250, height: 250)
            Button(action: {}) {
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
        
    }
}

struct CityChooseView_Previews: PreviewProvider {
    static var previews: some View {
        CityChooseView()
    }
}
