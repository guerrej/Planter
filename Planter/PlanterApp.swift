//
//  PlanterApp.swift
//  Planter
//
//  Created by Juan Guerrero on 4/25/23.
//

import SwiftUI

@main
struct PlanterApp: App {
    
    var networkManager = NetworkManager()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(networkManager)
        }
    }
}
