//
//  ExploreView.swift
//  airbnb-ios
//
//  Created by john benedict miranda on 6/10/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    var body: some View {
        NavigationStack {
            if showDestinationSearchView {
                DestinationSearchView()
            } else {
                ScrollView {
                    SearchAndFilterBar()
                    
                    LazyVStack(spacing: 32) {
                        ForEach(0 ... 10, id:\.self) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView()
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                    .padding()
                }
                .navigationDestination(for: Int.self) { listing in
                        ListingDetailView()
                        .navigationBarBackButtonHidden()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
