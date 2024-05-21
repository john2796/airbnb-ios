//
//  ExploreService.swift
//  airbnb-ios
//
//  Created by john benedict miranda on 5/21/24.
//

import Foundation

protocol ExploreService {
    func fetchListings() async throws -> [Listing]
}
