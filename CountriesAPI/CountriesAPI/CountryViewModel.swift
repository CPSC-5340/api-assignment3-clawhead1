//
//  CountryViewModel.swift
//  CountriesAPI
//
//  Created by Chase Lawhead on 3/29/24.
//

import Foundation

class CountryService {
    func fetchCountries(completion: @escaping ([Country]) -> Void) {
        let url = URL(string: "https://restcountries.com/v3.1/all")!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let countries = try JSONDecoder().decode([Country].self, from: data)
                    DispatchQueue.main.async {
                        completion(countries)
                    }
                } catch {
                    print(error)
                }
            } else if let error = error {
                print(error)
            }
        }.resume()
    }
}
