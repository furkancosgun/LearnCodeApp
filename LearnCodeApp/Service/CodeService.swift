//
//  CodeService.swift
//  LearnCodeApp
//
//  Created by Furkan on 19.01.2023.
//

import Foundation
import CodeEditor
import Alamofire

class CodeService{
    let baseUrl = "http://localhost:8080/api"
    func compileCode(code:String,language:String,completion : @escaping (Code)->Void){
        let params: Parameters = [
                    "code": code,
                    "language":language
                       ]
        AF.request(baseUrl+CodeCompilePath.compile.rawValue,method: .post, parameters:params,encoding: JSONEncoding.default).responseDecodable(of:Code.self) { response in
            print(response.error ?? "")
            guard let data = response.value else {return}
            completion(data)
        }
    }
}

enum CodeCompilePath:String{
    case compile = "/compile"
}

