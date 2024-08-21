//
//  CardView.swift
//  Hike
//
//  Created by Aleksandr Nesterov on 18.08.2024.
//

import SwiftUI

struct CardView: View {
    
    @State private var imageNumber = 1
    @State private var randomImageNumber = 1
    
    
    func setRandomImage() -> Void {
        repeat {
            randomImageNumber = Int.random(in: 1...5)
        } while(randomImageNumber == imageNumber)
        
        imageNumber = randomImageNumber
        
    }
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                HeaderView()
                
                ZStack {
                    CircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.smooth(duration: 0.3) ,value: imageNumber)
                }
                
                Button(action: setRandomImage, label: {
                    Text("Explore more ")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors:[.CustomColorGreenLight, .CustomColorGreenMedium],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(
                            color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.5), radius: 3, x: 1, y: 1
                        )
                })
                .buttonStyle(CustomButtonStyles())
            }
            
        }.frame(width: 320, height: 580)
        
    }
}

#Preview {
    CardView()
}
