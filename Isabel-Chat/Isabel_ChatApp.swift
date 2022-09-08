//
//  Isabel_ChatApp.swift
//  Isabel-Chat
//
//  Created by Jainy Alvin on 8/24/22.
//

import SwiftUI

@main
struct Isabel_ChatApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate : AppDelegate
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}
