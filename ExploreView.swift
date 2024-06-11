//
//  ExploreView.swift
//  airbnb-ios
//
//  Created by john benedict miranda on 6/10/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
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
                    Text("listing destination .....")
            }
        }
    }
}

#Preview {
    ExploreView()
}
