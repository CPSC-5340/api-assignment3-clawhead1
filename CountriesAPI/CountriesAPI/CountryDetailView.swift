//
//  CountryDetailView.swift
//  CountriesAPI
//
//  Created by Chase Lawhead on 3/29/24.
//

import SwiftUI

struct CountryDetailView: View {
    var country: Country
    
    var body: some View {
        VStack (alignment: .leading) {
            VStack(alignment: .leading, spacing: 8) {
                Text(country.name.common)
                    .font(.largeTitle)
                    .padding(.horizontal)
                    .underline()
                
                HStack {
                    Text("Population:")
                        .fontWeight(.bold)
                    Text("\(country.population)")
                        .border(.black)
                }
                .padding(.horizontal)
                
            }
            .padding(.top)
            
            HStack {
                Text("Languages:")
                    .fontWeight(.bold)
                    
                VStack(alignment: .leading) {
                    if let languages = country.languages?.values, let firstLanguage = languages.first {
                        Text(firstLanguage)
                            .border(.black)
                    } else {
                        Text("No official language")
                    }
                }
            }
            .padding(.horizontal)
            
            
            
            MapView(country: country)
                .frame(maxHeight: .infinity)
                .edgesIgnoringSafeArea(.bottom)
        }
        .navigationTitle(country.name.common)
        .navigationBarTitleDisplayMode(.inline)
    }
}

