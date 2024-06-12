//
//  ListingDetailView.swift
//  airbnb-ios
//
//  Created by john benedict miranda on 6/10/24.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView(.vertical) {
            // ------------------- image  -------------------
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView()
                    .frame(height: 320)
                //back button
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.foreground)
                        .frame(width: 32, height: 32)
                        .background(
                            Circle()
                                .fill(.white)
                        )
                        .padding(32)
                }
            }
            
            // ------------------- miami villa  -------------------
            VStack(alignment: .leading, spacing: 8) {
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                        Text("4.86")
                        Text(" - ")
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    
                    Text("Miami, Florida")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            // ------------------- host info view  -------------------
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Entire villa hosted by John Smith")
                        .font(.headline)
                        .frame(width:250, alignment: .leading)
                    
                    HStack(spacing: 2) {
                        Text("4 guests -")
                        Text("4 bedrooms -")
                        Text("4 beds -")
                        Text("4 baths")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                Spacer()
                
                Image("male-1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            .padding()
            
            Divider()
            
            // ------------------- listing features  -------------------
            
            VStack(alignment: .leading, spacing: 16) {
                ForEach(0 ..< 2) { feature in
                    HStack(spacing: 12) {
                        Image(systemName: "medal")
                        VStack(alignment: .leading) {
                            Text("Self check-in")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("Superhosts are experience, highly rated hosts who are commited to providing great stars for guests")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            // bedroom view
            VStack(alignment: .leading, spacing: 16) {
                Text("Where you'll sleep")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(1 ..< 5) { bedroom in
                            VStack {
                                Image(systemName: "bed.double")
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: 132, height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
            }
            .padding()
            
            Divider()
            // listing amenities
            VStack(alignment: .leading, spacing: 16) {
                Text("What this place offers")
                    .font(.headline)
                ForEach(0 ..< 5) { feature in
                    HStack {
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        Text("Wifi")
                            .font(.footnote)
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Where you'll be")
                    .font(.headline)
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
            
        }
        .toolbar(.hidden, for: .tabBar) // disable tab bar since we have overlay
        .ignoresSafeArea() // make images span to the top of the screen
        .padding(.bottom, 72) // push map above overlay
        .overlay(alignment: .bottom) { // bottom overlay
            ReserveListingOverlayView()
        }
    }
}

private struct ReserveListingOverlayView: View {
    var body: some View {
        VStack {
            Divider()
                .padding(.bottom)
            HStack {
                // reservation details
                VStack(alignment: .leading){
                    Text("$500")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Text("Total before taxes")
                        .font(.footnote)
                    Text("Oct 15 - Oct 20")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .underline()
                }
                Spacer()
                // reserve button
                Button {
                    print("DEBUG: Reserving listing...")
                } label: {
                    Text("Reserve")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 140, height: 40)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
            }
        }
        .padding(.horizontal)
        .padding(.bottom)
        .background(.background)
    }
    
}


#Preview {
    ListingDetailView()
}
