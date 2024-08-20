//
//  CustomButtonStyles.swift
//  Hike
//
//  Created by Aleksandr Nesterov on 20.08.2024.
//

import Foundation
import SwiftUI

struct CustomButtonStyles: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 40)
            .background(
                configuration.isPressed 
                ? LinearGradient(
                    colors: [.CustomColorGrayMedium, .CustomColorGrayLight],
                    startPoint: .top,
                    endPoint: .bottom
                )
                : LinearGradient(
                    colors: [.CustomColorGrayLight, .CustomColorGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .cornerRadius(40)
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(configuration.isPressed ? 1 : 0.8), radius: 2, x: 3, y: 1)
    }
}
