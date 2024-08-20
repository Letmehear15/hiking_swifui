//
//  Background.swift
//  Hike
//
//  Created by Aleksandr Nesterov on 18.08.2024.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack{
            Color.CustomColorGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            Color.CustomColorGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            
            LinearGradient(
                colors: [.CustomColorGreenLight, .CustomColorGreenMedium],
                startPoint: .top,
                endPoint: .bottom
            )
                .cornerRadius(40)
            
        }
    }
}

#Preview {
    BackgroundView()
}
