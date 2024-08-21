//
//  MotionAnimationView.swift
//  Hike
//
//  Created by Aleksandr Nesterov on 20.08.2024.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var circleRandomCount = Int.random(in: 6...12)
    @State private var isAnimation = false
    
    func getRandomCoords() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    
    func getRandomFrame() -> CGFloat {
        return CGFloat.random(in: 0...80)
    }
    
    func getRandomScale() -> CGFloat {
        return CGFloat.random(in: 0.1...2.0)
    }
    
    func getRandomSpeed() -> Double {
        return Double.random(in: 0.05...1.0)
    }
    
    func getRandomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    var body: some View {
        ZStack{
            ForEach(0...circleRandomCount, id: \.self) {_ in
                Circle()
                    .foregroundStyle(.white)
                    .opacity(0.25)
                    .frame(width: getRandomFrame(), height: getRandomFrame())
                    .position(x: getRandomCoords(), y: getRandomCoords())
                    .scaleEffect(isAnimation ? getRandomScale() : 1)
                    .onAppear(perform: {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25 )
                            .repeatForever()
                            .speed(getRandomSpeed())
                            .delay(getRandomDelay())
                        ) {
                            isAnimation.toggle()
                        }
                    })
            }
        }
        .frame(width: 256, height: 256)
        .mask{
            Circle()
        }
        .drawingGroup()
    }
}

#Preview {
    ZStack{
        Color(.systemTeal).ignoresSafeArea()
        
        MotionAnimationView()
    }
}
