//
//  SignUpView.swift
//  LearnCodeApp
//
//  Created by Furkan on 16.01.2023.
//

import SwiftUI

struct SignUpView: View {

    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack{
            HStack{Spacer()}
            Spacer()
            
            CustomTextField(text: $email, title: "Username", icon: "person")
            CustomTextField(text: $email, title: "Email Adress", icon: "envelope")
            CustomTextField(text: $password, title: "Password", icon: "key.horizontal")
            
            Spacer()
            
            Button{
            
            }label: {
                Text("Sign Up")
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

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
