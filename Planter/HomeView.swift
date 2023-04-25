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
        
        init() {
            UITabBar.appearance().isHidden = true
        }
        var body: some View{
            
            VStack(spacing: 0){
                TabView(selection: $selected){
                    
                    Color.orange
                        .overlay(content: {
                            Text("DevTechie.com")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                        })
                        .tag(tabItems[0])
                        .ignoresSafeArea(.all)
                    
                    Color.indigo
                        .overlay(content: {
                            Text("DevTechie.com")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                        })
                        .tag(tabItems[1])
                        .ignoresSafeArea(.all)
                    
                    Color.mint
                        .overlay(content: {
                            Text("DevTechie.com")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                        })
                        .tag(tabItems[2])
                        .ignoresSafeArea(.all)
                    
                    Color.pink
                        .overlay(content: {
                            Text("DevTechie.com")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                        })
                        .tag(tabItems[3])
                        .ignoresSafeArea(.all)
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
    }
}
