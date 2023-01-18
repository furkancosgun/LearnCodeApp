//
//  LoginView.swift
//  LearnCodeApp
//
//  Created by Furkan on 16.01.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @EnvironmentObject var model : UserViewModel
        
    var body: some View {
        VStack{
            HStack{Spacer()}
            
            Text("Sign Up")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
            
            Spacer()
            
            CustomTextField(text: $username, title: "Username", icon: "person")
            CustomTextField(text: $password, title: "Password", icon: "key.horizontal")
            
            Spacer()
            
            Button{
                model.loginUser(username: username, password: password)
            }label: {
                Text("Log In")
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
