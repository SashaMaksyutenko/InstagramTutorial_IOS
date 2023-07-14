//
//  SearchViewModel.swift
//  InstagramTutorial
//
//  Created by Sasha Maksyutenko on 14.07.2023.
//

import Foundation
class SearchViewModel:ObservableObject{
    @Published var users=[User]()
    init(){
        Task{
            try await fetchAllUsers()
        }
    }
    @MainActor
    func fetchAllUsers()async throws{
        self.users=try await UserService.fetchAllUsers()
    }
    
}
