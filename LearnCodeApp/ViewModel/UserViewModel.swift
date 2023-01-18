//
//  UserViewModel.swift
//  LearnCodeApp
//
//  Created by Furkan on 18.01.2023.
//

import Foundation

class UserViewModel: ObservableObject {
    @Published var user = User()
    private var service = AuthService()
   
    func loginUser(username:String,password:String) {
        service.loginUser(username: username, password: password) { User in
            self.user = User
        }
    }
    
    func register(username:String,email:String,password:String) {
        service.registerUser(username:username,email: email, password: password) { User in
            self.user = User
        }
    }
}
