//
//  CurrentUserProfileView.swift
//  InstagramTutorial
//
//  Created by Sasha Maksyutenko on 11.07.2023.
//

import SwiftUI

struct CurrentUserProfileView: View {
    let user:User
    var body: some View {
        NavigationStack{
            ScrollView
            {
                // header
                ProfileHeaderView(user: user)
                // post grid view
                PostGridView(user: user)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        AuthService.shared.signOut()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}
struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView(user: User.MOCK_USERS[0])
    }
}
