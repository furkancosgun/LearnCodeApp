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
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Spacer()
            }
            
            Text("Log In")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
                
            Spacer()
            
            CustomTextField(text: $username, title: "Username", icon: "person")
            CustomTextField(text: $email, title: "Email Adress", icon: "envelope")
            CustomTextField(text: $password, title: "Password", icon: "key.horizontal")
            
            Spacer()
            
            Button{
            
            }label: {
                Text("Sign Up")
                    .bold()
                    .frame(width: UIScreen.main.bounds.width - 60)
                    .padding()
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
