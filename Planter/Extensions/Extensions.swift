//
//  Extensions.swift
//  Planter
//
//  Created by Juan Guerrero on 4/25/23.
//

import Foundation
import SwiftUI

extension UIApplication {
    static var safeAreaInsets: UIEdgeInsets  {
        let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        return scene?.windows.first?.safeAreaInsets ?? .zero
    }
}

extension View {
    func hAlign(_ aligment: Alignment) -> some View {
        self
            .frame(maxWidth: .infinity, alignment: aligment)
    }
    
    func vAlign(_ alignment: Alignment) -> some View {
        self
            .frame(maxHeight: .infinity, alignment: alignment)
    }
}

extension View {
    func cardBackground() -> some View {
        modifier(CardBackground())
    }
}
