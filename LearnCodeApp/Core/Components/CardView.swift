//
//  CardView.swift
//  LearnCodeApp
//
//  Created by Furkan on 16.01.2023.
//

import SwiftUI

struct CardView: View {
    var course : Lesson
    var headColor : UIColor
    var body: some View {
        VStack(alignment: .leading){
            HStack{
            VStack(alignment: .leading){
                Text(course.title).font(.title).bold()
            }.padding()
                Spacer()
            }.background(Color(headColor))
            Text(course.subTitle).padding()
        }
        .background(.white)
        .frame(width: UIScreen.main.bounds.width - 50)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

/*
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(course: "JAVASCRIPT COURSE", subject: "Variables",headColor: .green,subText: "A JavaScript variable is simply a name of storage location. ")
    }
}*/
