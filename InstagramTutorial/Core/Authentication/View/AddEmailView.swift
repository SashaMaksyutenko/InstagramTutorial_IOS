//
//  AddEmailView.swift
//  InstagramTutorial
//
//  Created by Sasha Maksyutenko on 11.07.2023.
//

import SwiftUI

struct AddEmailView: View {
    @Environment (\.dismiss) var dismiss
    @EnvironmentObject var viewModel:RegistrationViewModel
    var body: some View {
        VStack(spacing:12){
            Text("Add your Email")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            Text("You'll use this email to sign in to your account")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            TextField("Email", text: $viewModel.email)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
            NavigationLink {
                CreateUserNameView()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Next")
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .frame(width: 360,height: 44)
                .background(Color(.systemBlue))
                .cornerRadius(8)
            }
            .padding(.vertical)
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

struct AddEmailView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmailView()
    }
}
