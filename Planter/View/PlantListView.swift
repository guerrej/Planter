//
//  PlantListView.swift
//  Planter
//
//  Created by Juan Guerrero on 4/28/23.
//

import SwiftUI

struct PlantListView: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(0..<50) { i in
                    PlantCardView()
                }
            }
        }
        .padding(.horizontal)
    }
}

struct PlantListView_Previews: PreviewProvider {
    static var previews: some View {
        PlantListView()
    }
}
