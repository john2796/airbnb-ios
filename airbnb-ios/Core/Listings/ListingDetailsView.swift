//
//  ListingDetailsView.swift
//  airbnb-ios
//
//  Created by john benedict miranda on 5/22/24.
//

import SwiftUI
import MapKit

struct ListingDetailsView: View {
    @Environment(\.dismiss) var dismiss
    var listing: Listing
    
    // state
//    @State private var cameraPosition: MapCameraPosition
//
//    init(listing: Listing) {
//        self.listing = listing
//
//        // set up map area
//        let center = CLLocationCoordinate2D(latitude: listing.latitude, longitude: listing.longitude)
//
//        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
//
//        let region = MKCoordinateRegion(center: center, span: span)
//       self._cameraPosition = State(initialValue: .region(region))    }
    
    
    var body: some View {
        ScrollView(.vertical) {
            // image carousel
            
            
            // property details
            
            // host info
            
            // listing features
            
            // room details
            
            // amenities
            
            // map view
        }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ListingDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ListingDetailsView(listing: Mock.listings[0])
    }
}

private struct PropertyDetailsView: View {
    var title: String
    var rating: Double
    var numReviews: Int
    var city: String
    var state: String

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.title)
                .bold()

            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 2) {
                    // ratings
                    Image(systemName: "star.fill")
//                    Text(rating)
                        .fontWeight(.bold)

                    Text(" - ")

                    // reviews
                    Text("\(numReviews) reviews")
                        .fontWeight(.semibold)
                        .underline()
                }
                .foregroundStyle(.foreground)

                // location
                Text("\(city), \(state)")
            }
            .font(.caption)
        }
        .frame(maxWidth: .infinity, alignment: .leading) // align left
        .padding()
    }
}
