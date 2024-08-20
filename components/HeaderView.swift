//
//  HeaderView.swift
//  Hike
//
//  Created by Aleksandr Nesterov on 19.08.2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading){
            
            HStack{
                Text("Hiking")
                    .font(.system(size: 50))
                    .fontWeight(.black)
                    .foregroundStyle(
                        LinearGradient(colors: [.CustomColorGrayLight, .CustomColorGrayMedium], startPoint: UnitPoint.top, endPoint: UnitPoint.bottom)
                    )
                
                Spacer()
                
                Button(action: {
                    print("Dorou")
                }, label: {
                    HikeButton()
                })

            }
            Text("Fun and enjoyable outdoor activity for friends and families.")
                .foregroundStyle(.colorGrayMedium)
                .italic()
                .multilineTextAlignment(.leading)
        }
            .padding(.horizontal, 30)
        
    }
}

#Preview {
    HeaderView()
}
