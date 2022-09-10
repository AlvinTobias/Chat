//
//  ContentView.swift
//  Isabel-Chat
//
//  Created by Jainy Alvin on 8/24/22.
//

import SwiftUI

struct RootView: View {
    @State var selectedTab = Tabs.contacts
    
    @State var isOnBoarding = !AuthViewModel.isUserLoggedIn()
    
    var body: some View {
        VStack
        {
            Spacer()
            CustomToolBar(selectedTab: $selectedTab)
        }
        .fullScreenCover(isPresented: $isOnBoarding) {
            
        } content: {
            OnBoardingContainer(isOnBoarding: $isOnBoarding)
        }


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
