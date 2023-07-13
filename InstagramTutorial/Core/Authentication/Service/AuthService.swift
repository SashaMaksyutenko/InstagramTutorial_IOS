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
    @MainActor
    func login(withEmail email:String, password:String)async throws{
        do{
            let result=try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession=result.user
        } catch{
            print("Debug: Failed to log in with error \(error.localizedDescription)")
        }
    }
    @MainActor
    func createUser(email:String,password:String,username:String) async throws{
        do{
            let result=try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession=result.user
        } catch{
            print("Debug: Failed to register User with error \(error.localizedDescription)")
        }
    }
    func loadUserData()async throws{
        
    }
    func signOut(){
        try?Auth.auth().signOut()
        self.userSession=nil
    }
}
