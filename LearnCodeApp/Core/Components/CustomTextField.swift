//
//  CustomTextField.swift
//  LearnCodeApp
//
//  Created by Furkan on 16.01.2023.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text : String
    var title : String
    var icon : String
    var isSecure : Bool
    var body: some View {
        VStack(alignment: .leading){
            HStack{Spacer()}
            Text(title).bold().foregroundColor(.white)
            HStack {
              Image(systemName: icon).foregroundColor(.black)
                if isSecure {
                    SecureField(title,text: $text).padding(10).foregroundColor(.black)
                }else{
                    TextField(title, text: $text).padding(10).foregroundColor(.black)
                }
                
              }
            .padding(10)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            Divider()
        }
    }
}

/*
 struct CustomTextField_Previews: PreviewProvider {
 static var previews: some View {
 CustomTextField(text: .constant(""), title: "login",icon: "person")
 }
 }
 */
