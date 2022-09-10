//
//  Contact.swift
//  Isabel-Chat
//
//  Created by Jainy Alvin on 9/8/22.
//

import SwiftUI

struct Contact: View {
    
    @Binding var isOnBoarding : Bool
    
    var body: some View {
        VStack
        {
            Spacer()
            Image("onboarding-all-set")
            Text("Awesome!")
                .font(.titleText)
                .padding(.top,32)
            Text("Continue to start chatting with your friends")
                .font(.bodyParagraph)
                .padding(.top,12)
            Spacer()
            Button {
                isOnBoarding = false
            } label: {
//                ZStack
//                {
//                    Rectangle()
//                        .foregroundColor(Color("button-primary"))
//                    Text("Get Started")
//                        .font(.button)
//                        .foregroundColor(Color("text-button"))
//                        .padding(.top,14)
//                }
//                .frame(height: 50, alignment: .center)
                Text("Continue")
                
            }
            .buttonStyle(CustomOnBoardButtonStyle())
             Text("By tapping ‘Continue’, you agree to our Privacy Policy.")
                .font(.footnote)
                .padding(.bottom,65)
            
        }
        .padding(.horizontal,30)
    }
}

struct Contact_Previews: PreviewProvider {
    static var previews: some View {
        Contact(isOnBoarding: .constant(true))
    }
}
