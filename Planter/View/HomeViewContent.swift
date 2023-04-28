//
//  HomeViewContent.swift
//  Planter
//
//  Created by Juan Guerrero on 4/25/23.
//

import SwiftUI

struct HomeViewContent: View {
    
    @State var zipCode: String = ""
    
    var body: some View {
        
        VStack {
            
            // Headerv View
            ZStack {
                Image("green-texture")
                    .resizable()
                    .frame(maxHeight: 220)
                    .clipped()
                    .ignoresSafeArea()
                VStack {
                    Text("Planter")
                        .hAlign(.leading)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    Text("Learn which plants will thrive in your location.")
                        .hAlign(.leading)
                        .foregroundColor(.white)
                        .font(.headline)
                    
                    HStack {
                        TextField("Enter Zipcode...", text: $zipCode)
                        Image(systemName: "magnifyingglass")
                    }.modifier(customTextFieldViewModifier(roundedCornes: 25, textColor: .black))
                }
                .padding(.horizontal,20)
                .padding(.bottom,30)
            }
            PlantListView()
            Spacer()
        }
    }
}

struct HomeViewContent_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewContent()
    }
}
