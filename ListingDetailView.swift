//
//  ListingDetailView.swift
//  airbnb-ios
//
//  Created by john benedict miranda on 6/10/24.
//

import SwiftUI

struct ListingDetailView: View {
    let images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
        "listing-5",
        
    ]
    var body: some View {
            // image
            TabView {
                ForEach(images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: 320)
            .tabViewStyle(.page)
        VStack(alignment: .leading) {
            // ------------------- miami villa  -------------------
            VStack(alignment: .leading, spacing: 4) {
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                HStack {
                    Image(systemName: "star.fill")
                    Text("4.86")
                    Text("28 reviews")
                        .underline()
                        .fontWeight(.semibold)
                }
                Text("Miami, Flordia")
                
            }

            // ------------------- host  -------------------
            HStack {
                VStack(alignment: .leading) {
                    Text("Entire villa hosted by John Smith")
                        .font(.headline)
                        .fontWeight(.semibold)
                
                    Text("4 guests - 4 bedrooms - 4 beds - 3 baths")
                        .font(.subheadline)
                }
                Spacer()
                Image("male-1")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 60)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                   
            }
            // ------------------- self checkin  -------------------
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image(systemName: "book")
                    VStack(alignment: .leading) {
                        Text("Self check-in")
                            .font(.headline)
                            .fontWeight(.semibold)
                        Text("Check yourself in with the keypad")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                    }
                }
                
                HStack {
                    Image(systemName: "medal")
                    VStack(alignment: .leading) {
                        Text("Superhost")
                            .font(.headline)
                            .fontWeight(.semibold)
                        Text("Superhost are experienced, highly rated hosts who are commited to providing greate stars for guests.")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                    }
                }
            }
            // ------------------- where u sleep  -------------------
        }
        .padding()
        Spacer()
    }
}

#Preview {
    ListingDetailView()
}
