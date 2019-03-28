//
//  ViewController.swift
//  MapPin
//
//  Created by Edna Dumas on 3/28/19.
//  Copyright © 2019 Edna Dumas. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        let centerPoint = CLLocationCoordinate2D(latitude: 52.011937, longitude: -3.713379)
        let coordinateSpan = MKCoordinateSpan(latitudeDelta: 3.5, longitudeDelta: 3.5)
        let coordinateRegion = MKCoordinateRegion(center: centerPoint, span: coordinateSpan)
        
        mapView.setRegion(coordinateRegion, animated: false)
        mapView.regionThatFits(coordinateRegion)
        
        let annotation1 = MKPointAnnotation()
        annotation1.title = "Swansea Bay"
        annotation1.subtitle = "Beautiful Beaches"
        annotation1.coordinate = CLLocationCoordinate2DMake(51.587736,-3.90152)
        
        let annotation2 = MKPointAnnotation()
        annotation2.title = "Menai Bridge"
        annotation2.subtitle = "Fantastic Engineering"
        annotation2.coordinate = CLLocationCoordinate2DMake(53.220527,-4.163561)
        
        let annotation3 = MKPointAnnotation()
        annotation3.title = "Parc Y Scarlets"
        annotation3.subtitle = "Oh Dear"
        annotation3.coordinate = CLLocationCoordinate2DMake(51.678809,-4.127469)
        
        let annotation4 = MKPointAnnotation()
        annotation4.title = "Castell Coch"
        annotation4.subtitle = "A Fairytale Castle"
        annotation4.coordinate = CLLocationCoordinate2DMake(51.535819,-3.2547)
        
        let annotation5 = MKPointAnnotation()
        annotation5.title = "Arthur's Stone"
        annotation5.subtitle = "Rock Of Legend"
        annotation5.coordinate = CLLocationCoordinate2DMake(51.593735,-4.179525)
        
        mapView.addAnnotation(annotation1)
        mapView.addAnnotation(annotation2)
        mapView.addAnnotation(annotation3)
        mapView.addAnnotation(annotation4)
        mapView.addAnnotation(annotation5)

        
    }


}

