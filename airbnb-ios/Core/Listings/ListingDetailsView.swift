//
//  ListingDetailsView.swift
//  airbnb-ios
//
//  Created by john benedict miranda on 5/22/24.
//

import SwiftUI
import MapKit

struct ListingDetailsView: View {
    
    var body: some View {
        ScrollView() {
            ListingImageCarouselView()
                .frame(height: 320)
            
            
            // location & rating info
            VStack(alignment: .leading, spacing: 8) {
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "star.fill")
                        Text("4.86")
                        Text("-")
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    
                    Text("Miami, Florida")
                }
                .font(.caption)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
            
            
            Divider()
            
            // host info view
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Entire villa hosted by John Smith")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack(spacing: 2) {
                        Text("4 guests -")
                        Text("4 bedrooms -")
                        Text("4 beds -")
                        Text("3 baths")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                
                Spacer()
                
                   Image("male-5")
                    .resizable()
                    .frame(width: 64, height: 64)
                    .scaledToFill()
                    .clipShape(Circle())
            }
            .padding()

            Divider()
            
            // listing features
            VStack(alignment: .leading, spacing: 16) {
                ForEach(0 ..< 2, id: \.self) { feature in
                    HStack(spacing: 8) {
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading) {
                            Text("Superhost")
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
            
            // beedrooms view
            VStack(alignment: .leading, spacing: 16) {
                Text("Where you'll sleep")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach( 1 ..< 5, id: \.self) { bedroom in
                            VStack(alignment: .leading, spacing: 8) {
                                Image(systemName: "bed.double")
                                Text("Beedrom \(bedroom)")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
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

                ForEach(0 ..< 4, id: \.self) { feature in
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
            
//            Divider()
           
        }
    }
}

struct ListingDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ListingDetailsView()
    }
}
