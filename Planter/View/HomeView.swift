//
//  ContentView.swift
//  Planter
//
//  Created by Juan Guerrero on 4/25/23.
//

import SwiftUI

struct HomeView: View {
    
    var tabItems = TabItem.allCases
    @State var selected: TabItem = .home
    @EnvironmentObject var networkManager: NetworkManager
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        
        VStack(spacing: 0){
            TabView(selection: $selected){
                
                HomeViewContent()
                    .tag(tabItems[0])
                    .environmentObject(networkManager)
                
                BrowseView()
                    .tag(tabItems[1])
                
                SavedPlantsView()
                    .tag(tabItems[2])
        
            }
            Spacer(minLength: 0)
            CustomTabbarView(tabItems: tabItems, selected: $selected)
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(NetworkManager())
    }
}
