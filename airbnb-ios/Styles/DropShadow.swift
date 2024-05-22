//
//  DropShadow.swift
//  airbnb-ios
//
//  Created by john benedict miranda on 5/21/24.
//

import Foundation
import SwiftUI


struct DropShadow: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .shadow(color: .black.opacity(0.1), radius: 10)
    }
}
