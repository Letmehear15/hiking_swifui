//
//  HikeButton.swift
//  Hike
//
//  Created by Aleksandr Nesterov on 20.08.2024.
//

import SwiftUI

struct HikeButton: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(
                    LinearGradient(colors: [.CustomColorGreenLight, .CustomColorGreenMedium], startPoint: .top, endPoint: .bottom)
                )
            Circle()
                .stroke(
                    LinearGradient(colors: [.CustomColorGrayLight, .CustomColorGrayMedium], startPoint: .top, endPoint: .bottom)
                    ,lineWidth: 4)
            Image(systemName: "figure.hiking")
                .font(.system(size: 30))
                .fontWeight(.black)
                .foregroundStyle(LinearGradient(colors: [.CustomColorGrayLight, .CustomColorGrayMedium], startPoint: .top, endPoint: .bottom))
        }.frame(width: 58, height: 58)
    }
}

#Preview {
    HikeButton()
}
