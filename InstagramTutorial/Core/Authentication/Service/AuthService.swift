//
//  AuthService.swift
//  InstagramTutorial
//
//  Created by Sasha Maksyutenko on 13.07.2023.
//

import Foundation
import FirebaseAuth
class AuthService{
    @Published var userSession:FirebaseAuth.User?
    static let shared=AuthService()
    init(){
        self.userSession=Auth.auth().currentUser
    }
    func login(withEmail email:String, password:String)async throws{
        
    }
    func createuser(email:String,pasword:String,username:String) async throws{
        
    }
    func loadUserData()async throws{
        
    }
    func signOut(){
        
    }
}
