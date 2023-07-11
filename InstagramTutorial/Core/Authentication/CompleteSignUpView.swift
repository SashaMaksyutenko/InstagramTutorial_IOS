//
//  CompleteSignUpView.swift
//  InstagramTutorial
//
//  Created by Sasha Maksyutenko on 11.07.2023.
//

import SwiftUI

struct CompleteSignUpView: View {
    @Environment (\.dismiss) var dismiss
    var body: some View {
        VStack(spacing:12){
            Spacer()
            Text("Welcome to Instagram")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .multilineTextAlignment(.center)
            Text("Click bellow to complete registration and start using Instagram")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            Button {
                print("complete sign up")
            } label: {
                Text("Complete Sign Up")
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

struct CompleteSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSignUpView()
    }
}
