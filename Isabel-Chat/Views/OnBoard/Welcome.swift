//
//  Welcome.swift
//  Isabel-Chat
//
//  Created by Jainy Alvin on 9/8/22.
//

import SwiftUI

struct Welcome: View {
    
    @Binding var currentBoardingStep : OnBoardingStep
    
    var body: some View {
        VStack
        {
            Spacer()
            Image("onboarding-welcome")
            Text("Welcome To Chat App")
                .font(.titleText)
                .padding(.top,32)
            Text("Simple and fuss-free chat experience")
                .font(.bodyParagraph)
                .padding(.top,12)
            Spacer()
            Button {
                currentBoardingStep = .phonenumber
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
                Text("Get Started")
                
            }
            .buttonStyle(CustomOnBoardButtonStyle())
             Text("By tapping ‘Continue’, you agree to our Privacy Policy.")
                .font(.footnote)
                .padding(.bottom,65)
            
        }
        .padding(.horizontal,30)
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome(currentBoardingStep: .constant(.welcome))
    }
}
