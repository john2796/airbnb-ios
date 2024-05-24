//
//  ExploreView.swift
//  airbnb-ios
//
//  Created by john benedict miranda on 5/20/24.
//

import SwiftUI

struct ExploreView: View {
    // inject view model
    
    // bool to toggle destination search
    @State private var showDestinationSearchView = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                SearchFilterBarView()
                
                LazyVStack(spacing: 32) {
                    ForEach(0 ... 10, id: \.self) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView()
                                .frame(height: 400)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                }
                .navigationDestination(for: Int.self){ listing in
                    Text("Listing detail view...")
            }
          }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
