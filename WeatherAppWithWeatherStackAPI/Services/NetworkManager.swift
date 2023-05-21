//
//  NetworkManager.swift
//  WeatherAppWithWeatherStackAPI
//
//  Created by Камаль Атавалиев on 21.05.2023.
//

import Foundation
import Alamofire

final class NetworkManager {
    
    static let shared = NetworkManager()
    
    private let accessKey = "414a7f553e3b40344a3d8ff36490ac5"
    
    private let urlParams = [String]()
    
    private let url = "http://api.weatherstack.com/current?access_key=c414a7f553e3b40344a3d8ff36490ac5&query=Bishkek"
    
    private init() {}
    
    
    
    func fetchWeather(from url: String, _ completion: @escaping (Result<CountryWeather, AFError>) -> Void) {
        AF.request(url)
            .validate()
            .responseJSON { dataResponse in
                switch dataResponse.result {
                case .success(let value):
                    guard let weather = value as? [String: Any] else { return }
                    print(weather["location"] ?? "")
                    print(weather)
                    
                  
                    let countryWeather2 = CountryWeather(
                        location: weather["location"] as! Location,
                        request: weather["request"] as! Request,
                        current: weather["current"] as! Current
                    )
                    completion(.success(countryWeather2))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
}
