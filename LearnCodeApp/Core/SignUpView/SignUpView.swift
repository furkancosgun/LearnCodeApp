//
//  SignUpView.swift
//  LearnCodeApp
//
//  Created by Furkan on 16.01.2023.
//

import SwiftUI

struct SignUpView: View {

    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var model : UserViewModel
    var body: some View {
        VStack{
            HStack{
                Spacer()
            }
            
            Text("Sign Up")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
                
            Spacer()
            
            CustomTextField(text: $username, title: "Username", icon: "person",isSecure: false)
            CustomTextField(text: $email, title: "Email Adress", icon: "envelope",isSecure: false)
            CustomTextField(text: $password, title: "Password", icon: "key.horizontal",isSecure: true)
            
            Spacer()
            
            Button{
                model.register(username:username,email: email, password: password)
            }label: {
                Text("Sign Up")
                    .bold()
                    .padding()
                    .padding(.horizontal,UIScreen.main.bounds.width / 4)
                    .foregroundColor(.white)
                    .background(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            }
            
        }
        .padding()
        .background(.blue)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
