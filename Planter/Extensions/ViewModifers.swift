//
//  ViewModifers.swift
//  Planter
//
//  Created by Juan Guerrero on 4/28/23.
//

import Foundation
import SwiftUI

struct customTextFieldViewModifier: ViewModifier {
    var roundedCornes: CGFloat
    var textColor: Color
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .cornerRadius(roundedCornes)
            .foregroundColor(textColor)
            .shadow(radius: 15)
            .offset(y: 20)
    }
}

// view modifier
struct CardBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color("CardBackground"))
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 4)
    }
}
