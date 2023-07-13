//
//  LoginView.swift
//  InstagramTutorial
//
//  Created by Sasha Maksyutenko on 11.07.2023.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel=LogInViewModel()
    var body: some View {
        NavigationStack{
            // logo Image
            VStack{
                Spacer()
                Image("instagram-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220,height: 100)
                // text fields
                VStack{
                    TextField("Enter your email",text:$viewModel.email)
                        .autocapitalization(.none)
                        .modifier(IGTextFieldModifier())
                    SecureField("Enter your password",text:$viewModel.password)
                        .modifier(IGTextFieldModifier())
                }
                Button {
                    print("show forgot password")
                } label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing,28)
                }
                .frame(maxWidth:.infinity,alignment: .trailing)
                Button {
                    Task{
                        try await viewModel.signIn()
                    }
                } label: {
                    Text("Log In")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360,height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }
                .padding(.vertical)
                HStack{
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width/2)-40,height: 0.5)
                        .foregroundColor(.gray)
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width/2)-40,height: 0.5)
                }
                .foregroundColor(.gray)
                HStack{
                    Image("facebook-logo")
                        .resizable()
                        .frame(width:20,height: 20)
                    Text("Continue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                }
                .padding(.top,8)
                Spacer()
                Divider()
                NavigationLink {
                    AddEmailView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing:3){
                        Text("Don't have an account?")
                        Text("Sign Up")
                    }
                    .font(.footnote)
                    .fontWeight(.semibold)
                }
                .padding(.vertical,16)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
