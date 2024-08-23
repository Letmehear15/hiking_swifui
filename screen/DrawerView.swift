//
//  DrawerView.swift
//  Hike
//
//  Created by Aleksandr Nesterov on 23.08.2024.
//

import SwiftUI

extension Image {
    func customImageStyles() -> some View  {
        self
            .font(.system(size: 80, weight: .black))
            .foregroundColor(.CustomColorGreenMedium)
    }
}

struct DrawerView: View {
    var body: some View {
        List{
            Section {
                HStack{
                    Spacer()
                    
                    Image(systemName: "laurel.leading")
                        .customImageStyles()
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 60, weight: .black))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.CustomColorGreenLight,.CustomColorGreenMedium], startPoint: .top, endPoint: .bottom
                                )
                            )
                        
                        Text("Editors' shoice")
                            .foregroundColor(.CustomColorGreenMedium)
                            .font(.system(size: 18))
                    }
                    Image(systemName: "laurel.trailing")
                        .customImageStyles()
                    
                    Spacer()
                    
                }.padding(.top,8)
                
                VStack(spacing: 10) {
                    Text("Where can you find\n perfect tracks?")
                        .font(.system(size: 20, weight: .heavy))
                        .multilineTextAlignment(.center)
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. Find the best day hikes in the app.")
                        .multilineTextAlignment(.center)
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for\n a walk.")
                        .font(.system(size: 16, weight: .heavy))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.CustomColorGreenMedium)
                    
                }.padding(.bottom)
            }
            .listRowSeparator(.hidden)
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    DrawerView()
}
