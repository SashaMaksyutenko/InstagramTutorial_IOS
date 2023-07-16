//
//  EditProfileView.swift
//  InstagramTutorial
//
//  Created by Sasha Maksyutenko on 14.07.2023.
//

import SwiftUI
import PhotosUI
struct EditProfileView: View {
    @Environment (\.dismiss) var dismiss
    @StateObject var viewModel:EditProfileViewModel
    init(user:User){
        self._viewModel=StateObject(wrappedValue: EditProfileViewModel(user: user))
    }
    var body: some View {
        VStack{
            //toolbar
            VStack {
                HStack{
                    Button("Cancel"){
                        dismiss()
                    }
                    Spacer()
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        Spacer()
                    Button {
                        Task{
                            try await viewModel.updateUserData()
                            dismiss()
                        }
                    } label: {
                        Text("Done")
                            .font(.subheadline)
                            .fontWeight(.bold)
                    }
                }
                .padding(.horizontal)
                Divider()
            }
            //edit profile picture
            PhotosPicker(selection:$viewModel.selectedImage){
                VStack{
                    if let image=viewModel.profileImage{
                        image
                            .resizable()
                            .frame(width: 80,height: 80)
                            .foregroundColor(.white)
                            .background(.gray)
                            .clipShape(Circle())
                    }
                    else{
                        CircularProfileImageView(user: viewModel.user,size:.large)
                    }
                    Text("Edit Profile Picture")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Divider()
                }
            }
            .padding(.vertical,8)
            //edit profile info
            VStack{
                EditProfileRowView(title: "Name", placeHolder: "enter your name...", text: $viewModel.fullname)
                EditProfileRowView(title: "Bio", placeHolder: "enter your Bio", text: $viewModel.bio)
            }
            Spacer()
        }
    }
}
struct EditProfileRowView:View{
    let title:String
    let placeHolder:String
    @Binding var text:String
    var body:some View{
        HStack{
            Text(title)
                .padding(.leading,10)
                .frame(width: 100,alignment: .leading)
            VStack{
                TextField(placeHolder,text: $text)
                Divider()
            }
        }
        .font(.subheadline)
        .frame(height:36)
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView(user: User.MOCK_USERS[0])
    }
}
