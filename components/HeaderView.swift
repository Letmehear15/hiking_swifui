//
//  HeaderView.swift
//  Hike
//
//  Created by Aleksandr Nesterov on 19.08.2024.
//

import SwiftUI

struct HeaderView: View {
    @State private var isDrawerOpen = false
    
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
                    isDrawerOpen.toggle()
                }, label: {
                    HikeButton()
                }).sheet(isPresented: $isDrawerOpen){
                    DrawerView().presentationDragIndicator(.visible).presentationDetents([.medium, .large])
                }

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
