//
//  CardView.swift
//  Hike
//
//  Created by Aleksandr Nesterov on 18.08.2024.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        
        
        ZStack {
            BackgroundView()
            
            VStack {
                HeaderView()
                
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [
                                    .CustomColorIndigoMedium,
                                    .CustomColorBrown
                                ],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 256, height: 256)
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
            }
        }.frame(width: 320, height: 580)
        
    }
}

#Preview {
    CardView()
}
