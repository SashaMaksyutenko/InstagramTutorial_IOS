//
//  RegistrationViewModel.swift
//  InstagramTutorial
//
//  Created by Sasha Maksyutenko on 13.07.2023.
//

import Foundation
class RegistrationViewModel:ObservableObject{
    @Published var username=""
    @Published var email=""
    @Published var password=""
    func createUser() async throws
    {
        try await AuthService.shared.createUser(email: email, password: password, username: username)
    }
}
