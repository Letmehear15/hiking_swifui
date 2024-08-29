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
    
    private let appIcons = [
        "AppIcon-Backpack",
        "AppIcon-Camera",
        "AppIcon-Campfire",
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom"
    ]
    
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
            
            Section(header: Text("Alternate icons")){
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 11){
                        ForEach(appIcons.indices, id: \.self){icon in
                            Button(action: {
                                UIApplication.shared.setAlternateIconName("\(appIcons[icon])")
                            }, label: {
                                Image("\(appIcons[icon])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 70, height: 70)
                                    .cornerRadius(10)
                            })
                            .buttonStyle(.borderless)
                        }
                    }
                    
                }
                .padding(.top, 12)
                
                Text("Choose your favorite app iconfrom the collection above.")
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 12)
            }
            .listRowSeparator(.hidden)
            
            
            Section {
                CustomLabeledContent(valueText: "Hike", labelText: "Application", labelIcon: "apps.iphone", iconBackgroundColor: .blue)
                
                CustomLabeledContent(valueText: "iOS, iPadOS", labelText: "Compatibility", labelIcon: "info.circle", iconBackgroundColor: .red)
                
                CustomLabeledContent(valueText: "Swift", labelText: "Technology", labelIcon: "swift", iconBackgroundColor: .orange)
                
                CustomLabeledContent(valueText: "1.0", labelText: "Version", labelIcon: "gear", iconBackgroundColor: .purple)
                
                CustomLabeledContent(valueText: "Alex Nesterov", labelText: "Developer", labelIcon: "ellipsis.curlybraces", iconBackgroundColor: .cyan)
                
                
                CustomLabeledContent(valueText: "Alex Nesterov", labelText: "Designer", labelIcon: "paintpalette", iconBackgroundColor: .pink)
                
                CustomLabeledContent(valueText: "https://google.com", labelText: "Web site", linkText: "Google", labelIcon: "globe", iconBackgroundColor: .indigo, isUrl: true)
                
            } header: {
                Text("ABOUT THE APP")
            } footer: {
                HStack{
                    Spacer()
                    Text("Copyright © All right reserved.")
                    Spacer()
                }.padding(.top)
            }
        }
    }
}

#Preview {
    DrawerView()
}
