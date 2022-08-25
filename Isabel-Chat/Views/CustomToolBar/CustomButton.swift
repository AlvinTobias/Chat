//
//  CustomButton.swift
//  Isabel-Chat
//
//  Created by Jainy Alvin on 8/25/22.
//

import SwiftUI

struct CustomButton: View {
    var imageName : String
    var buttonName : String
    var isActive : Bool
    
    var body: some View {
        GeometryReader { geo in
            
            if(isActive == true)
            {
                Rectangle().foregroundColor(.blue)
                    .frame(width: geo.size.width/2, height: 4, alignment: .center)
                    .padding(.leading, geo.size.width/4)
            }
            VStack(alignment: .center, spacing: 4)
            {
                
                Image(systemName: imageName).resizable().scaledToFit()
                    .frame(width: 24, height: 24)
                Text(buttonName).font(.tabBar)
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}


