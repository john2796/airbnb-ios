//
//  SearchFilterBarView.swift
//  airbnb-ios
//
//  Created by john benedict miranda on 5/21/24.
//

import SwiftUI

struct SearchFilterBarView: View {
    @ObservedObject var viewModel: ExploreViewModel
    
    var body: some View {
        HStack {
            HStack(spacing: 12) {
                // Image
                Image(systemName: "magnifyingglass")
                
                // location info
                VStack(alignment: .leading, spacing: 2) {
                    Text(viewModel.searchLocation.isEmpty ? "Where to?" : viewModel.searchLocation)
                        .font(.footnote)
                        .fontWeight(.bold)
                    
                    Text("\(viewModel.searchLocation.isEmpty ? "Anywhere - " : "")Any Week - Add Guests")
                        .font(.caption2)
                        .foregroundStyle(.gray)
                }
            }
            
            Spacer()
            
            // filter
            Button {
                print("DEBUG: opening the filters...")
            } label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.foreground)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .foregroundStyle(.foreground)
        .clipShape(Capsule())
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray3))
                .dropShadow()
        }
        
    }
}

struct SearchFilterBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchFilterBarView(viewModel: ExploreViewModel(with: MockExploreServiceImp()))
    }
}

