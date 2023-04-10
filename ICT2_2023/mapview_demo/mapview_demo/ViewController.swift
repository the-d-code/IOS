//
//  ViewController.swift
//  mapview_demo
//
//  Created by MAC on 3/15/23.
//

import UIKit
import CoreLocation
import MapKit
class ViewController: UIViewController {

    @IBOutlet weak var mymapview: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let location:CLLocationCoordinate2D=CLLocationCoordinate2D(latitude: 21.1535, longitude: 72.7832)
        let span:MKCoordinateSpan=MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region:MKCoordinateRegion=MKCoordinateRegion(center: location, span: span)
        mymapview.setRegion(region, animated: true)
        self.mymapview.showsUserLocation=true
        
        let ant:MKPointAnnotation=MKPointAnnotation()
        ant.coordinate=CLLocationCoordinate2D(latitude: 21.1535, longitude: 72.7832)
        ant.title="Where am I?"
        ant.subtitle="I an at VNSGU"
        mymapview.addAnnotation(ant)
        
    }


}

