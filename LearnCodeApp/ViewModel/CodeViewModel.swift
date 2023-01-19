//
//  CodeViewModel.swift
//  LearnCodeApp
//
//  Created by Furkan on 19.01.2023.
//

import Foundation
import CodeEditor

class CodeViewModel:ObservableObject{
    @Published var code = Code(language: "", code: "")
    private var service = CodeService()
    func compileCode(code:String,langu:CodeEditor.Language){
        service.compileCode(code: code, language: langu == .python ? "python" : "javascript") { Code in
            self.code = Code
        }
    }
}
