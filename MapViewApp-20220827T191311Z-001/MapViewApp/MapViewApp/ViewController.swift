//
//  ViewController.swift
//  MapViewApp
//
//  Created by Lankford, Michael A on 7/21/21.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var lat: UITextField!
    @IBOutlet weak var long: UITextField!
    @IBOutlet weak var mapOptions: UISegmentedControl!
    @IBOutlet weak var theMap: MKMapView!
    var annotation: MKPointAnnotation!
    
    @IBAction func switchMapType(_ sender: UISegmentedControl) {
        switch mapOptions.selectedSegmentIndex{
        case 0:
            theMap.mapType = MKMapType.standard
        case 1:
            theMap.mapType = MKMapType.satellite
        default:
            theMap.mapType = MKMapType.hybrid
        }
    }
    
    func addAnnotation(_ coordinate: CLLocationCoordinate2D, title: String, subtitle: String){
        annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = title
        annotation.subtitle = subtitle
        theMap.addAnnotation(annotation)
    }
    
    @IBAction func showMap(_ sender: UIButton) {
        let lat = Double(lat.text!)!
        let long = Double(long.text!)!
        
        switch mapOptions.selectedSegmentIndex{
        case 0:
            theMap.mapType = MKMapType.standard
        case 1:
            theMap.mapType = MKMapType.satellite
        default:
            theMap.mapType = MKMapType.hybrid
        }
        
        let coordinate: CLLocationCoordinate2D = CLLocationCoordinate2DMake(lat, long)
        let region = MKCoordinateRegion(center: coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
        theMap.region = region
        addAnnotation(coordinate, title: "Statue of Liberty", subtitle: "Liberty Island New York")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

