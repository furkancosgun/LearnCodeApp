//
//  GreetingView.swift
//  LearnCodeApp
//
//  Created by Furkan on 16.01.2023.
//

import SwiftUI

struct GreetingView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
            }
            Spacer()
            
            Image("GreetingLogo")
                .scaledToFill()
            
            Text("Welcome To")
                .font(.title2)
                .bold().foregroundColor(.white)
            
            Text("LearnCode")
                .font(.largeTitle)
                .bold().foregroundColor(.white)
            
            Spacer()
            
            HStack(spacing: 30){
                
                NavigationLink {
                    SignUpView()
                } label: {
                    Text("Sign Up")
                        .padding(.horizontal)
                        .bold()
                        .padding()
                }
                .background(.white)
                .foregroundColor(.black)
                .clipShape(RoundedRectangle(cornerRadius: 15))

                NavigationLink {
                    LoginView()
                } label: {
                    Text("Log In")
                        .padding(.horizontal)
                        .bold()
                        .padding()
                }
                .background(.black)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 15))

            }
        }.background(.blue)
    }
}

struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView()
    }
}
