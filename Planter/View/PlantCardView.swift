//
//  PlantCardView.swift
//  Planter
//
//  Created by Juan Guerrero on 4/28/23.
//

import SwiftUI

struct PlantCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Image("plant-test-img")
                .frame(maxWidth: 150, maxHeight: 150)
                .clipped()
            Text("Plant Tester")
                .font(.headline)
                .padding(.top, 8)
                .padding(.leading, 8)
            HStack {
                Image(systemName: "drop.fill")
                    .padding(.leading, 8)
                    .foregroundColor(.green)
                Image(systemName: "drop.fill")
                    .foregroundColor(.green)
                Image(systemName: "drop.fill")
                    .foregroundColor(.green)
                Image(systemName: "drop.fill")
                    .foregroundColor(.green)
                Image(systemName: "drop")
                    .foregroundColor(.green)
            }
            .padding(.bottom,10)

        }
        .cardBackground()
    }
}

struct PlantCardView_Previews: PreviewProvider {
    static var previews: some View {
        PlantCardView()
    }
}
