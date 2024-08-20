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
        configuration.label
    }
}
