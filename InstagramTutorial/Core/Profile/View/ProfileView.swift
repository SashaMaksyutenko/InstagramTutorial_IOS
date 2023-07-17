//
//  ProfileView.swift
//  InstagramTutorial
//
//  Created by Sasha Maksyutenko on 10.07.2023.
//

import SwiftUI

struct ProfileView: View {
    let user:User
      
    var body: some View {
        
            ScrollView
            {
                // header
               ProfileHeaderView(user: user)
                // post grid view
               PostGridView(user: user)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USERS[0])
    }
}
