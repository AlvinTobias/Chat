//
//  CustomButtonStyle.swift
//  Isabel-Chat
//
//  Created by Jainy Alvin on 9/8/22.
//

import Foundation
import SwiftUI

struct CustomOnBoardButtonStyle : ButtonStyle
{
    func makeBody(configuration: Configuration) -> some View {
        
        ZStack
        {
            Rectangle()
                .foregroundColor(Color("button-primary"))
            configuration.label
                .font(.button)
                .foregroundColor(Color("text-button"))
                
        }
        .cornerRadius(5)
        .frame(height: 50, alignment: .center)
    }
}
