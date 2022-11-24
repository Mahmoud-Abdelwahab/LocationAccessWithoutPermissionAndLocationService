//
//  CountryDectectorViewController.swift
//  TestLocationTask
//
//  Created by Mahmoud Abdul-wahab on 22/11/2022.
//

import Foundation
import MapKit

class CountryDectectorViewController: UIViewController {
    var didDetectCountryCode: ((String?) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Map view setup
        let mapView = MKMapView()
        view.addSubview(mapView)
        mapView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: view.topAnchor),
            mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        mapView.layoutIfNeeded()
        // Reverse geocoding map region center
        let location = CLLocation(
            latitude: mapView.region.center.latitude,
            longitude: mapView.region.center.longitude
        )
        CLGeocoder().reverseGeocodeLocation(location) { placemarks, _ in
            self.didDetectCountryCode?(placemarks?.first?.country)
        }
    }
}
