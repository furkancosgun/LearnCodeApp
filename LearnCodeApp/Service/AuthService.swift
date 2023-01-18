//
//  AuthService.swift
//  LearnCodeApp
//
//  Created by Furkan on 18.01.2023.
//

import Alamofire
import Foundation

class AuthService{
    private let baseUrl = "http://localhost:8080/api/auth"
    func loginUser(username : String, password : String,completion :@escaping(User)->Void){
        let params: Parameters = [
                    "username": username,
                    "password":password
                       ]
        
        AF.request(baseUrl+AuthPath.login.rawValue,method: .post, parameters:params,encoding: JSONEncoding.default).responseDecodable(of:User.self) { response in
            print(response.error ?? "")
            guard let data = response.value else {return}
            completion(data)
        }
    }
    
    func registerUser(username:String,email : String, password : String,completion :@escaping(User)->Void){
        let params: Parameters = [
                    "username": username.lowercased(),
                    "email": email.lowercased(),
                    "password":password
                       ]
        AF.request(baseUrl+AuthPath.register.rawValue,method: .post, parameters:params,encoding: JSONEncoding.default).responseDecodable(of:User.self) { response in
            print(response.error ?? "")
            guard let data = response.value else {return}
            completion(data)
        }
    }
}

enum AuthPath:String{
    case login = "/login"
    case register = "/register"
}
