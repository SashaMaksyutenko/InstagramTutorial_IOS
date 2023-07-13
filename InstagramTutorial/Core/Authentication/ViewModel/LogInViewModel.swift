//
//  LogInViewModel.swift
//  InstagramTutorial
//
//  Created by Sasha Maksyutenko on 13.07.2023.
//

import Foundation
class LogInViewModel:ObservableObject{
    @Published var email=""
    @Published var password=""
    func signIn()async throws{
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
