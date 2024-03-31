//
//  MapView.swift
//  CountriesAPI
//
//  Created by Chase Lawhead on 3/29/24.
//

import SwiftUI

import MapKit

struct MapView: UIViewRepresentable {
    var country: Country

    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ view: MKMapView, context: Context) {
        let latitude = country.latlng?.first ?? 0
        let longitude = country.latlng?.last ?? 0

        let coordinate = CLLocationCoordinate2D(
            latitude: latitude,
            longitude: longitude
        )
        let span = MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}
