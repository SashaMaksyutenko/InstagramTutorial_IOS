//
//  ContentViewModel.swift
//  InstagramTutorial
//
//  Created by Sasha Maksyutenko on 13.07.2023.
//

import Foundation
import Firebase
import Combine
class ContentViewModel:ObservableObject{
    private let service=AuthService.shared
    @Published var userSession:FirebaseAuth.User?
    @Published var cancellables=Set<AnyCancellable>()
    @Published var currentUser:User?
    init(){
        setupSubscribers()
    }
    func setupSubscribers(){
        service.$userSession.sink{ [weak self] userSession in
            self?.userSession=userSession
        }
        .store(in: &cancellables)
        service.$currentUser.sink{ [weak self] currentUser in
            self?.currentUser=currentUser
        }
        .store(in: &cancellables)
    }
}
