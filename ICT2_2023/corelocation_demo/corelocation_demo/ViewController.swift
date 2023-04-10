//
//  ViewController.swift
//  corelocation_demo
//
//  Created by MAC on 3/13/23.
//

import UIKit
import CoreLocation
class ViewController: UIViewController, CLLocationManagerDelegate {
    var clm:CLLocationManager?
    var geo:CLGeocoder?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clm=CLLocationManager()
        geo=CLGeocoder()
        self.clm?.delegate=self
        self.clm?.desiredAccuracy=kCLLocationAccuracyBest
        self.clm?.requestWhenInUseAuthorization()
        self.clm?.startUpdatingLocation()
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let loc=locations.first
        print(loc?.coordinate.latitude)
        print(loc?.coordinate.longitude)
        
        // mylocation=geo?.geocodeAddressString("Department of ICT, VNSGU, Surat", completionHandler: {print(location)})
        //geo?.reverseGeocodeLocation(<#T##location: CLLocation##CLLocation#>, preferredLocale: <#T##Locale?#>, completionHandler: <#T##CLGeocodeCompletionHandler##CLGeocodeCompletionHandler##([CLPlacemark]?, Error?) -> Void#>)
    }

}

