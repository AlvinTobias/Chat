//
//  CustomToolBar.swift
//  Isabel-Chat
//
//  Created by Jainy Alvin on 8/25/22.
//

import SwiftUI

enum Tabs : Int
{
    case chats = 0
    case contacts = 1
}
struct CustomToolBar: View {
    
    @Binding var selectedTab : Tabs
   
    var body: some View {
       
        
        HStack(alignment: .center)
        {
            
            Button {
                selectedTab = .chats
               
                
            } label: {
                CustomButton(imageName: "bubble.left", buttonName: "Chats", isActive: selectedTab == .chats)
//                GeometryReader { geo in
//
//                    VStack(alignment: .center, spacing: 4)
//                    {
//                        if(selectedTab == .chats)
//                        {
//                        Rectangle().foregroundColor(.blue)
//                            .frame(width: geo.size.width/2, height: 2, alignment: .center)
//                        }
//                        Image(systemName: "bubble.left").resizable().scaledToFit()
//                            .frame(width: 24, height: 24, alignment: .center)
//                        Text("Chats").font(.tabBar)
//                    }
//                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
//                }
            }
            .tint(Color("icons-secondry"))
            
            Button {
                
            } label: {
             GeometryReader { geo in
                    
                    
                    VStack(alignment: .center, spacing: 4)
                    {
                        
                        Image(systemName: "plus.circle.fill")
                            .resizable().scaledToFit()
                            .frame(width: 32, height: 32, alignment: .center)
                        Text("New Chat").font(.tabBar)
                    }
                  .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                }
            }
            .tint(Color("icons-primary"))
            
            Button {
                selectedTab = .contacts
            } label: {
                
                CustomButton(imageName: "person", buttonName: "Contacts", isActive: selectedTab == .contacts)
//                GeometryReader { geo in
//
//                    VStack(alignment: .center, spacing: 4)
//                    {
//                        if (selectedTab == .contacts)
//                        {
//                            Rectangle().foregroundColor(.blue)
//                                .frame(width: geo.size.width/2, height: 2, alignment: .center)
//                        }
//                        Image(systemName: "person").resizable().scaledToFit()
//                            .frame(width: 24, height: 24, alignment: .center)
//                        Text("Contacts").font(.tabBar)
//                    }
//                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
//               }
            }
            .tint(Color("icons-secondry"))
           
        }.frame(height: 82, alignment: .center)
        
    }
}

struct CustomToolBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomToolBar(selectedTab: .constant(.contacts))
    }
}
