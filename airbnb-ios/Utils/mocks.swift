//
//  mocks.swift
//  airbnb-ios
//
//  Created by john benedict miranda on 5/21/24.
//

import Foundation

let mockingListingImages = [
    "listing-1",
    "listing-2",
    "listing-3",
    "listing-4"
]

enum Mock {
    static var listings: [Listing] = [
        Listing(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-1",
            title: "Cozy Apartment near Downtown",
            rating: 4.5,
            numReviews: 29
            type: .apartment,
            images: [
                "listing-1",
                "listing-2",
                "listing-4",
                "listing-8",
                "listing-5",
            ],
            numBedrooms: 2,
            numBeds: 3,
            numBathrooms: 1,
            numGuests: 4,
            pricePerNight: 100,
            latitude: 37.7749,
            longitude: -122.4194,
            street: "123 Main St",
            city: "San Francisco",
            state: "CA",
            zipCode: 94105,
            features: [.selfCheckin, .superHost],
            amemities: [.wifi, .kitchen, .tv, .laundry, .alarmSystem]
        )
    ]
}
