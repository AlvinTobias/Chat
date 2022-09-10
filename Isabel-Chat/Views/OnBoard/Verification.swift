//
//  Verification.swift
//  Isabel-Chat
//
//  Created by Jainy Alvin on 9/8/22.
//

import SwiftUI

struct Verification: View {
    
    @Binding var currentBoardingStep : OnBoardingStep
    @State var verifyNumber1 : String = ""
    @State var verifyNumber2 : String = ""
    @State var verifyNumber3 : String = ""
    @State var verifyNumber4 : String = ""
    @State var verifyNumber5 : String = ""
    @State var verifyNumber6 : String = ""
    
    var body: some View {
        VStack
        {
        
        Text("Verification").font(.titleText)
            .padding(.top,52)
            
        Text("Enter your mobile number below. We’ll send you a verification code after.")
            .font(.bodyParagraph)
            .padding(.top,12)
            .multilineTextAlignment(.center)
            .frame(alignment: .center)
        
        ZStack
        {
            Rectangle()
                .frame(height: 56, alignment: .center)
                .foregroundColor(Color("input"))
            HStack
            {
                
                VStack
                {
                TextField(" ", text: $verifyNumber1)
                    .keyboardType(.numberPad)
                    .font(.system(size: 10))
                    .frame(width: 25, height: 50, alignment: .center)
                    .padding(.horizontal,2)
                    .font(.bodyParagraph)
                    Divider()
                }
                .frame(width: 25, height: 100, alignment: .center)
                .padding(.horizontal,10)
                VStack
                {
                TextField(" ", text: $verifyNumber2)
                    .keyboardType(.numberPad)
                    .frame(width: 25, height: 50, alignment: .center)
                    Divider()
                }
                .frame(width: 25, height: 50, alignment: .center)
                .padding(.horizontal,10)
                VStack
                {
                TextField(" ", text: $verifyNumber3)
                    .keyboardType(.numberPad)
                    .frame(width: 25, height: 50, alignment: .center)
                    Divider()
                }
                .frame(width: 25, height: 50, alignment: .center)
                .padding(.horizontal,10)
                VStack
                {
                TextField(" ", text: $verifyNumber4)
                    .keyboardType(.numberPad)
                    .frame(width: 25, height: 50, alignment: .center)
                    Divider()
                }
                .frame(width: 25, height: 50, alignment: .center)
                .padding(.horizontal,10)
                VStack
                {
                TextField(" ", text: $verifyNumber5)
                    .keyboardType(.numberPad)
                    .frame(width: 25, height: 50, alignment: .center)
                    Divider()
                }
                .frame(width: 25, height: 50, alignment: .center)
                .padding(.horizontal,10)
                VStack
                {
                TextField(" ", text: $verifyNumber6)
                    .keyboardType(.numberPad)
                    .frame(width: 25, height: 50, alignment: .center)
                    Divider()
                }
                .frame(width: 25, height: 50, alignment: .center)
                .padding(.horizontal,10)
                
            }
            .padding(.horizontal,10)
            
            
        }
        
        Spacer()
        Button {
            currentBoardingStep = .profile
        } label: {
            
            Text("Next")
        }
        .buttonStyle(CustomOnBoardButtonStyle())
        .padding(.bottom,87)
    }
        .padding(.horizontal,30)
    }
}

struct Verification_Previews: PreviewProvider {
    static var previews: some View {
        Verification(currentBoardingStep: .constant(.verification))
    }
}
