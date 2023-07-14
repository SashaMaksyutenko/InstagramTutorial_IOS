//
//  SearchView.swift
//  InstagramTutorial
//
//  Created by Sasha Maksyutenko on 11.07.2023.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText=""
    @StateObject var viewModel=SearchViewModel()
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing:12){
                    ForEach(viewModel.users) { user in
                        NavigationLink(value: user) {
                            HStack {
                                Image(systemName: "person.circle")
                                    .resizable()
                                    .foregroundColor(.gray)
                                    .scaledToFill()
                                    .frame(width: 40,height: 40)
                                    .clipShape(Circle())
                                VStack(alignment: .leading){
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                    if let fullname=user.fullname{
                                        Text(fullname)
                                    }
                                }
                                .font(.footnote)
                                Spacer()
                            }
                            .foregroundColor(.black)
                            .padding(.horizontal)
                        }
                    }
                }
                .padding(.top,8)
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user:user)
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
