//
//  OnBoardingContainer.swift
//  Isabel-Chat
//
//  Created by Jainy Alvin on 9/8/22.
//

import SwiftUI

enum OnBoardingStep : Int
{
    case welcome = 0
    case phonenumber = 1
    case verification = 2
    case profile = 3
    case contacts = 4
}

struct OnBoardingContainer: View {

    @State var currentBoardingStep = OnBoardingStep.welcome
    @Binding var isOnBoarding : Bool
    var body: some View {
        ZStack
        {
            Color("background")
                .ignoresSafeArea()
            switch currentBoardingStep {
            case .welcome:
                Welcome(currentBoardingStep: $currentBoardingStep)
            case .phonenumber:
                PhoneNumber(currentBoardingStep: $currentBoardingStep)
            case .verification:
                Verification(currentBoardingStep: $currentBoardingStep)
            case .profile:
                Profile(currentBoardingStep: $currentBoardingStep)
            case .contacts:
                Contact(isOnBoarding: $isOnBoarding)
            }
        }
    }
}

struct OnBoardingContainer_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingContainer(currentBoardingStep: .welcome, isOnBoarding: .constant(true))
    }
}
