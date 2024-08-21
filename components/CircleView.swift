//
//  CircleView.swift
//  Hike
//
//  Created by Aleksandr Nesterov on 20.08.2024.
//

import SwiftUI

struct CircleView: View {
    
    @State var isAnimating = false
    
    var body: some View {
        
        ZStack{
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .CustomColorIndigoMedium,
                            .CustomColorBrown
                        ],
                        startPoint: isAnimating ? .topLeading : .bottomLeading,
                        endPoint: isAnimating ? .bottomTrailing : .topTrailing
                    )
                )
                .onAppear {
                  withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                      isAnimating.toggle()
                  }
                }
            
            MotionAnimationView()
        }.frame(width: 256, height: 256)
    }
}

#Preview {
    CircleView()
}
