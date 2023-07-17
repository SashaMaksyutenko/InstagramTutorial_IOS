//
//  UserSevice.swift
//  InstagramTutorial
//
//  Created by Sasha Maksyutenko on 14.07.2023.
//

import Foundation
import Firebase
struct UserService{
    static func fetchUser(withUid uid:String) async throws->User{
        let snapshot=try await Firestore.firestore().collection("users").document(uid).getDocument()
        return try snapshot.data(as: User.self)
    }
    @MainActor
    static func fetchAllUsers()async throws->[User]{
        let snapshot=try await Firestore.firestore().collection("users").getDocuments()
        return snapshot.documents.compactMap({try? $0.data(as: User.self)})
        }
}
