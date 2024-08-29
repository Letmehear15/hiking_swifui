//
//  CustomLabeledContent.swift
//  Hike
//
//  Created by Aleksandr Nesterov on 25.08.2024.
//

import SwiftUI

struct CustomLabeledContent: View {
    
    @State var valueText: String
    @State var labelText: String
    @State var linkText: String = ""
    @State var labelIcon: String
    @State var iconBackgroundColor: Color
    @State var isUrl: Bool = false
    
    var body: some View {
        LabeledContent {
            if isUrl {
                Link(destination: URL(string: valueText)!, label: {
                    Text(linkText)
                        .foregroundColor(.primary)
                        .fontWeight(.heavy)
                })
            } else {
                Text(valueText)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            }
        } label: {
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(iconBackgroundColor)
                    
                    Image(systemName: labelIcon)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }
                Text(labelText)
            }
        }
    }
}

#Preview {
    List{
        CustomLabeledContent(
            valueText: "HIKE",
            labelText: "Application",
            labelIcon: "apps.iphone",
            iconBackgroundColor: .blue
        )
    }
}
