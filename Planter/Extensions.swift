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
