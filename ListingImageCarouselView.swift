//
//  ListingImageCarouselView.swift
//  airbnb-ios
//
//  Created by john benedict miranda on 6/10/24.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var body: some View {
        let images = [
            "listing-1",
            "listing-2",
            "listing-3",
            "listing-4",
            "listing-5",
            
        ]
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
