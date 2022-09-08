//
//  AuthViewModel.swift
//  Isabel-Chat
//
//  Created by Jainy Alvin on 9/8/22.
//

import Foundation
import FirebaseAuth

class AuthViewModel
{
    static func isUserLoggedIn()-> Bool
    {
        return Auth.auth().currentUser != nil
    }
    
    static func currentUserLoggedIn()->String
    {
        return Auth.auth().currentUser?.uid ?? ""
    }
    
    static func signOut(){
       try? Auth.auth().signOut()
    }
    
}
