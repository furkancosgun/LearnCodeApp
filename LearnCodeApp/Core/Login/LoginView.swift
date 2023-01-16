//
//  LoginView.swift
//  LearnCodeApp
//
//  Created by Furkan on 16.01.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        VStack{
            HStack{Spacer()}
            Spacer()
            
            CustomTextField(text: $email, title: "Email Adress", icon: "envelope")
            CustomTextField(text: $password, title: "Password", icon: "key.horizontal")
            
            Spacer()
            
            Button{
            
            }label: {
                Text("Log In")
                    .bold()
                    .padding()
                    .padding(.horizontal,100)
                    .foregroundColor(.white)
                    .background(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            }
            
        }
        .padding()
        .background(.blue)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
