//
//  LocationManager.swift
//  UberClone
//
//  Created by Георгий Борисов on 25.02.2024.
//

import Foundation
import CoreLocation

class LocationManager:NSObject,ObservableObject{
    private let locationManager = CLLocationManager()
    let shared = LocationManager()
    @Published var userLocation : CLLocationCoordinate2D?
    
    
    override init(){
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    
}

extension LocationManager:CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard !locations.isEmpty else {return}
        locationManager.stopUpdatingLocation()
    }
}
