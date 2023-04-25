//
//  TabItem.swift
//  Planter
//
//  Created by Juan Guerrero on 4/25/23.
//

import Foundation
import SwiftUI

enum TabItem: String, CaseIterable {
    case home
    case search
    case bookmarks
    case profile
    
    var description: String {
        switch self {
        case .home:
            return "Home"
        case .search:
            return "Search"
        case .bookmarks:
            return "Bookmarks"
        case .profile:
            return "Profile"
        }
    }
    
    var icon: String {
        switch self {
        case .home:
            return "house.circle.fill"
            
        case .search:
            return "magnifyingglass.circle.fill"
            
        case .bookmarks:
            return "bookmark.circle.fill"
            
        case .profile:
            return "person.circle.fill"
        }
    }
}
