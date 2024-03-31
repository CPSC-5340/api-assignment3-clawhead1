//
//  CountryModel.swift
//  CountriesAPI
//
//  Created by Chase Lawhead on 3/29/24.
//

import Foundation
import MapKit

struct Country: Codable, Identifiable {
    struct Name: Codable {
        let common: String
        let official: String
    }

    let name: Name
    let cca2: String
    let population: Int
    let languages: [String: String]?
    var id: String { cca2 }
    
    let latlng: [Double]?
}
