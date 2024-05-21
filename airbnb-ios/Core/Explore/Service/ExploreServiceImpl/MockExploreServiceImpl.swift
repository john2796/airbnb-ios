//
//  MockExploreServiceImpl.swift
//  airbnb-ios
//
//  Created by john benedict miranda on 5/20/24.
//

import Foundation


class MockExploreServiceImp: ExploreService {
    func fetchListings() async throws -> [Listing] {
        return Mock.listings // TODO: replace with actual API call
    }
}
