//
//  Listing.swift
//  Airbnb Clone
//
//  Created by Sebastian on 12/9/23.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable {
    let id: String

    // owner info
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String

    // listing info
    let title: String
    var rating: Double
    var numReviews: Int
    let type: ListingType
    var images: [String]

    // bedrooms
    let numBedrooms: Int
    let numBeds: Int
    let numBathrooms: Int

    // pricing
    let numGuests: Int
    var pricePerNight: Int

    // location
    let latitude: Double
    let longitude: Double

    // address
    let street: String
    let city: String
    let state: String
    let zipCode: Int

    // property benefits
    var features: [ListingFeature]
    var amemities: [ListingAmenity]
}

enum ListingFeature: Int, Codable, Identifiable, Hashable {
    case selfCheckin
    case superHost

    var id: Int {
        return self.rawValue
    }

    var title: String {
        switch self {
        case .selfCheckin: return "Self Check-in"
        case .superHost: return "Superhost"
        }
    }

    var subTitle: String {
        switch self {
        case .selfCheckin: return "Check yourself in with the keypad."
        case .superHost: return "Superhosts are experienced, highly rated hosts who are committed to providing great stays for guests"
        }
    }

    var imageName: String {
        switch self {
        case .selfCheckin: return "door.left.hand.open"
        case .superHost: return "medal"
        }
    }
}

enum ListingAmenity: Int, Codable, Identifiable, Hashable {
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony

    var id: Int {
        return self.rawValue
    }

    var title: String {
        switch self {
        case .pool: return "Pool"
        case .kitchen: return "Kitchen"
        case .wifi: return "Wifi"
        case .laundry: return "Laundry"
        case .tv: return "TV"
        case .alarmSystem: return "Alarm System"
        case .office: return "Office"
        case .balcony: return "Balcony"
        }
    }

    var imageName: String {
        switch self {
        case .pool: return "figure.pool.swim"
        case .kitchen: return "fork.knife"
        case .wifi: return "wifi"
        case .laundry: return "washer"
        case .tv: return "tv"
        case .alarmSystem: return "checkerboard.shield"
        case .office: return "pencil.and.ruler.fill"
        case .balcony: return "building"
        }
    }
}

enum ListingType: Int, Codable, Identifiable, Hashable {
    case apartment
    case house
    case townHouse
    case villa

    var description: String {
        switch self {
        case .apartment: return "Apartment"
        case .house: return "House"
        case .townHouse: return "Town House"
        case .villa: return "Villa"
        }
    }

    var id: Int {
        return self.rawValue
    }
}
