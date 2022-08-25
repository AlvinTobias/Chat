//
//  ContentView.swift
//  Isabel-Chat
//
//  Created by Jainy Alvin on 8/24/22.
//

import SwiftUI

struct RootView: View {
    @State var selectedTab = Tabs.contacts
    
    var body: some View {
        VStack
        {
            Spacer()
            CustomToolBar(selectedTab: $selectedTab)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
