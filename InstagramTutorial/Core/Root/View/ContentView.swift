//
//  ContentView.swift
//  InstagramTutorial
//
//  Created by Sasha Maksyutenko on 10.07.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel=ContentViewModel()
    @StateObject var registrationViewModel=RegistrationViewModel()
    var body: some View {
        Group{
            if viewModel.userSession==nil{
                LoginView()
                    .environmentObject(registrationViewModel)
            }
            else{
                MainTabView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
