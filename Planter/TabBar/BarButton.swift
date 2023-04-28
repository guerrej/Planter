//
//  BarButton.swift
//  Planter
//
//  Created by Juan Guerrero on 4/25/23.
//

import Foundation
import SwiftUI

struct BarButton : View {
    @Binding var selected : TabItem
    @Binding var centerX : CGFloat
    
    var rect : CGRect
    var value: TabItem
    
    var body: some View{
        Button(action: {
            withAnimation(.spring()){
                selected = value
                centerX = rect.midX
            }
        }, label: {
            VStack{
                Image(systemName: value.icon)
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 30, height: 30)
                    .foregroundColor(selected == value ? .green : .gray)
                
                Text(value.description)
                    .font(.caption)
                    .foregroundColor(.black)
                    .opacity(selected == value ? 1 : 0)
            }
            .padding(.top)
            .frame(width: 70, height: 50)
            .offset(y: selected == value ? -15 : 0)
        })
    }
}
