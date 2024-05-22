//
//  View.swift
//  airbnb-ios
//
//  Created by john benedict miranda on 5/21/24.
//

import Foundation
import SwiftUI


extension View {
    func cardStyle(in color: Color = .white) -> some View {
        return modifier(Card(bgColor: color))
    }

    func dropShadow() -> some View {
        return modifier(DropShadow())
    }
}

