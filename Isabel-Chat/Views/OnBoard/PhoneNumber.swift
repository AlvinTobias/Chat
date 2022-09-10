//
//  PhoneNumber.swift
//  Isabel-Chat
//
//  Created by Jainy Alvin on 9/8/22.
//

import SwiftUI

struct PhoneNumber: View {
    @State var phoneNumber = ""
    @Binding var currentBoardingStep : OnBoardingStep
    
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
                    TextField("e.g + 182 232 2877", text: $phoneNumber)
                        .keyboardType(.numberPad)
                        .font(.bodyParagraph)
                    Spacer()
                    Image(systemName: "multiply.circle.fill")
                        .frame(width: 19, height: 19, alignment: .center)
                        .foregroundColor(Color("icons-input"))
                        .onTapGesture {
                            phoneNumber = ""
                        }
                }
                .padding(.horizontal,10)
                
                
            }
            
            Spacer()
            Button {
                currentBoardingStep = .verification
            } label: {
                
                Text("Next")
            }
            .buttonStyle(CustomOnBoardButtonStyle())
            .padding(.bottom,87)
            
            
        }
        .padding(.horizontal,30)
        
    }
}

struct PhoneNumber_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumber(phoneNumber: "+1 917 653 8396", currentBoardingStep: .constant(.phonenumber))
    }
}
