//
//  Card.swift
//  airbnb-ios
//
//  Created by john benedict miranda on 5/21/24.
//

import Foundation
import SwiftUI

struct Card: ViewModifier {
    var bgColor: Color
    
    
    func body(content: Content) -> some View {
        return content
            .padding()
            .background(bgColor)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .dropShadow()
    }
}
