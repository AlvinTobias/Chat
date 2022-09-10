//
//  Profile.swift
//  Isabel-Chat
//
//  Created by Jainy Alvin on 9/8/22.
//

import SwiftUI

struct Profile: View {
    @Binding var currentBoardingStep : OnBoardingStep
    @State var givenName : String = ""
    @State var lastName : String = ""
    var body: some View {
        VStack
        {
            Text("Setup your Profile").font(.titleText)
                .padding(.top,52)
                
            Text("Enter your mobile number below. We’ll send you a verification code after.")
                .font(.bodyParagraph)
                .padding(.top,12)
                .multilineTextAlignment(.center)
                .frame(alignment: .center)
            Spacer()
            
            ZStack
            {
                
                Circle().foregroundColor(.white)
                Circle().stroke(Color("button-primary"),lineWidth: 2)
                Image(systemName: "camera.fill").foregroundColor(Color("icons-input"))
            }
            .frame(width: 134, height: 134, alignment: .center)
            Spacer()
            
            ZStack
            {
                Rectangle()
                    .frame(height: 56, alignment: .center)
                    .foregroundColor(Color("input"))
                TextField("Given Name", text: $givenName)
                    .keyboardType(.numberPad)
                    .font(.bodyParagraph)
                    .padding(.horizontal,10)
            }
            ZStack
            {
                Rectangle()
                    .frame(height: 56, alignment: .center)
                    .foregroundColor(Color("input"))
                TextField("Last Name", text: $lastName)
                    .keyboardType(.numberPad)
                    .font(.bodyParagraph)
                    .padding(.horizontal,10)
            }
            Spacer()
            Button {
                currentBoardingStep = .contacts
                
            } label: {
                
                Text("Next")
            }
            .buttonStyle(CustomOnBoardButtonStyle())
            .padding(.bottom,87)
        }
        .padding(.horizontal,30)
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile(currentBoardingStep: .constant(.profile))
    }
}
