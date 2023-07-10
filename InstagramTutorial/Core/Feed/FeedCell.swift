//
//  FeedCell.swift
//  InstagramTutorial
//
//  Created by Sasha Maksyutenko on 10.07.2023.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack{
            // image+username
            HStack{
                Image("venom 4")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40,height: 40)
                    .clipShape(Circle())
                Text("Venom")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding(.leading,8)
            // post image
            Image("venom 4")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            // action buttons
            HStack(spacing:16){
                Button {
                    print("Like Post")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                Button {
                    print("Comment on Post")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                Button {
                    print("share Post")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                Spacer()
            }
            .padding(.leading,8)
            .padding(.top,4)
            .foregroundColor(.black)
            // likes label
            Text("23 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth:.infinity,alignment: .leading)
                .padding(.leading,10)
                .padding(.top,1)
            // caption label
            HStack{
                Text("Venom").fontWeight(.semibold) +
                Text("This is some test caption for now")
            }
            .frame(maxWidth:.infinity,alignment: .leading)
            .font(.footnote)
            .padding(.leading,10)
            .padding(.top,1)
            Text("6 hours ago")
                .font(.footnote)
                .frame(maxWidth:.infinity,alignment: .leading)
                .padding(.leading,10)
                .padding(.top,1)
                .foregroundColor(.gray)
        }
    }
}
struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
