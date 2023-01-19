//
//  CodeEditorView.swift
//  LearnCodeApp
//
//  Created by Furkan on 17.01.2023.
//

import SwiftUI
import CodeEditor
struct CodeEditorView: View {
    var language : CodeEditor.Language
    @ObservedObject var model = CodeViewModel()
    @State private var source = ""
    @Environment(\.presentationMode) var present
    var body: some View {
        VStack{
            HStack{
                
            Button{
                present.wrappedValue.dismiss()
            }label: {
                Text("Back")
            }
                
            Spacer()
                
            Button{
                model.compileCode(code: source, langu: language)
            }label: {
                Text("Run")
            }
                
            }.padding(.horizontal)
            
            
                ScrollView(.horizontal){
                    HStack{
                        CodeEditor(source: $source, language: language, theme: .agate)
                            .frame(width: UIScreen.main.bounds.width)
                            
                        VStack(alignment: .leading){
                            ScrollView(.vertical){
                                Text(model.code.code).frame(width: UIScreen.main.bounds.width,alignment: .leading)
                            }
                            Spacer()
                        }.padding()
                    }
                
            }
            
        }
      
    }
}

struct CodeEditorView_Previews: PreviewProvider {
    static var previews: some View {
        CodeEditorView(language: .javascript)
    }
}
