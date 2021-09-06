//
//  ViewController.swift
//  MKMapCameraProject
//
//  Created by Akin on 06/09/2021.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate {

    // initialise mapview here
    let map = MKMapView()
    
    let southBankLocation = CLLocationCoordinate2D(latitude: 51.5021033, longitude: -0.1224091)
    
    var camera = MKMapCamera()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        map.delegate = self
        
        camera = MKMapCamera(lookingAtCenter: southBankLocation, fromDistance: 3000, pitch: 400, heading: 45.0)
        map.camera = camera
        map.mapType = .satelliteFlyover
        map.frame = view.bounds
        view.addSubview(map)
       
    }
    
    
 
    
    


}

