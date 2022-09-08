//
//  AppDelegate.swift
//  Isabel-Chat
//
//  Created by Jainy Alvin on 9/1/22.
//

import Foundation
import SwiftUI
import FirebaseCore



class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}
