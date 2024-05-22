//
//  DestinationSearchView.swift
//  airbnb-ios
//
//  Created by john benedict miranda on 5/21/24.
//

import SwiftUI


enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    // bindings
    @Binding var showView: Bool
    @ObservedObject var viewModel: ExploreViewModel
    
    // state
    @State private var selectedOption: DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numAdults = 1
    
    var body: some View {
        VStack {
            // nav controls
            
            // location search
            
            // date selection
            
            // guest selection
            
            
        }
        .background(Color(.systemGray5))
    }
}

struct DestinationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationSearchView(showView: .constant(false), viewModel: ExploreViewModel(with: MockExploreServiceImp()))
    }
}

private struct NavigationControlsView: View {
    @Binding var showView: Bool
    @ObservedObject var viewModel: ExploreViewModel
    
    var body: some View {
        HStack {
            
        }
    }
}
