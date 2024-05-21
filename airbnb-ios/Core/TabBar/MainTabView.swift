//
//  MainTabView.swift
//  airbnb-ios
//
//  Created by john benedict miranda on 5/20/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Explore")
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
            
            Text("Wish list")
                .tabItem {
                    Label("Wishlists", systemImage: "heart.fill")
                }
            
            Text("Profile")
                .tabItem {
                   Label("Profile", systemImage: "person")
                }
        }
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            
            UITabBar.appearance().standardAppearance = appearance
        }
        .tint(.pink)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
