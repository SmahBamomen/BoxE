//
//  MapView.swift
//  boxe
//
//  Created by Samah Bamumin on 07/07/1444 AH.
//


import SwiftUI
import MapKit
import UIKit
struct MapView: View {
    // 2.
    @State var region = MKCoordinateRegion(
        
        center: CLLocationCoordinate2D(latitude: 24.774265, longitude: 46.738586),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    @State private var directions: [String] = []
    @State private var showDirections = false
    private let places = [
        //2.
        PointOfInterest(name: "p1", latitude: 24.76177, longitude:  46.65361),
        PointOfInterest(name: "p2", latitude: 24.76303, longitude: 46.65726),
        PointOfInterest(name: "p3", latitude: 24.77067, longitude:  46.66078),
        PointOfInterest(name: "p4", latitude: 24.77235, longitude:  46.64978),
        PointOfInterest(name: "p5", latitude: 24.77779, longitude:  46.65130),
//        PointOfInterest(name: "p6", latitude: 24.764379733483516, longitude: 46.647556588512970),
//        PointOfInterest(name: "p7", latitude: 24.766055327354607, longitude: 46.646726158843535),
//        PointOfInterest(name: "p8", latitude: 24.761189490055369, longitude: 46.649169236644383),
//        PointOfInterest(name: "p9", latitude: 24.761620666233899, longitude: 46.648953645409733),
//        PointOfInterest(name: "p10", latitude: 24.761794363015312, longitude:46.648867379185361),
//        PointOfInterest(name: "p11", latitude: 24.761848933319744, longitude: 46.648839503450290),
//        PointOfInterest(name: "p12", latitude: 24.766055327354607, longitude: 46.646726158843535),
//        PointOfInterest(name: "p13", latitude: 24.763168471219274, longitude: 46.648172324956960),
//        PointOfInterest(name: "p14", latitude: 24.764783547127152, longitude: 46.647347466627906)
    ]

    var body: some View {
        VStack {
            Map(coordinateRegion: $region,
                showsUserLocation: true,
                
                annotationItems: places) { place in
                MapMarker(coordinate: place.coordinate)
         
            }
//            Button ("Open Google Map") {
//       
//                       let toLatitude = 24.763168471219274
//                       let toLongitude = 46.648172324956960
//                       
//                       let fromLatitude = 10.00
//                       let fromLongitude = 10.00
//                       
//                       self.navigateOnGoogleMap(sourceLatitude: fromLatitude, sourceLongitude: fromLongitude, destinationLatitude: toLatitude, destinationLongitude: toLongitude)
//                   }
           

Spacer()

        }
        .ignoresSafeArea(.all)
      }
    
    func navigateOnGoogleMap(sourceLatitude : Double, sourceLongitude : Double, destinationLatitude : Double, destinationLongitude : Double) {
           let urlGoogleMap : URL = URL(string: "comgooglemaps://?saddr=\(sourceLatitude),\(sourceLongitude)&daddr=\(destinationLatitude),\(destinationLongitude)&directionsmode=driving")!
           
           if UIApplication.shared.canOpenURL(urlGoogleMap) {
               UIApplication.shared.open(urlGoogleMap, options: [:], completionHandler: nil)
               
           } else {
               let urlString = URL(string:"http://maps.google.com/?saddr=\(sourceLatitude),\(sourceLongitude)&daddr=\(destinationLatitude),\(destinationLongitude)&directionsmode=driving")
               
               UIApplication.shared.open(urlString!, options: [:], completionHandler: nil)
           }
       }

}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}


struct PointOfInterest: Identifiable {
    // 2.
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    
    // 3.
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
