//
//  LearnView.swift
//  LearnCodeApp
//
//  Created by Furkan on 17.01.2023.
//

import SwiftUI

struct LearnView: View {
    @State var showCodingView = false
    var lesson : Lesson
    var body: some View {
        VStack(alignment: .leading){
            ScrollView{
                HStack{Spacer()}
                Text(lesson.title).bold().font(.title).foregroundColor(.white)
                Divider().frame(height:  2).background(.white)
                Text(lesson.subTitle).bold().font(.title2).foregroundColor(.white)
                Divider().frame(height:  2).background(.white)
                Text(lesson.content).bold().foregroundColor(.white)
                Divider().frame(height:  2).background(.white)
                
                Button{
                    self.showCodingView.toggle()
                }label: {
                    Text("Try Yourself")
                        .bold()
                        .padding()
                        .padding(.horizontal,100)
                        .foregroundColor(.black)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                }.sheet(isPresented: $showCodingView){
                    CodeEditorView(language: lesson.language == "py" ? .python : .javascript )
                        .padding(.vertical)
                }
                Spacer()
            }
        }
        .padding()
        .background(.blue)
    }
}

struct LearnView_Previews: PreviewProvider {
    static var previews: some View {
        LearnView(lesson: Lesson(id:1,title: "what is python", subTitle: "As the title suggests, we will talk about Python.", content: """
           Python nedir?
           Bugün ki yazımızda başlıktan da anlaşılacağı üzere Python hakkında konuşacağız.

           Son zamanlarda gerçekten ençok yükselişe geçen programlama dillerinden olan Python, genel amaçlı bir programlama dilidir. Bu programlama dili 1991 yılında Guido van Rossum tarafından tasarlanmıştır. O zamanlar Guido'nun genel amacı uzmanlaşılması kolay ve kodlaması kolay bir programlama dili çıkartmaktı.

           Python, bu okunabilirliği kolaylaştırmak için girintilerden(indentation) faydalanmış ve ayrıca süslü parantez ve noktalı virgül gibi zorundalıkları ortadan kaldırmıştır.

           Python ile bugün ne kodlayabiliriz?
           Web uygulamaları
           Mobile uygulama
           Masaüstü uygulaması
           Veri Madenciliği ile ilgili çalışmalar
           Bot yazımı
           Yapay zeka uygulamaları
           Sistem scriptleri
           Akabinde sayfamakla bitmez çok fazla çeşitli uygulamalar çıkartabiliriz.

           Python hangi platformlarda çalışır?
           Python Linux, Windows, Mac vb çeşitli platformlarda çalışır.

           Python nesne yönelimli bir programlama dilimidir?
           Tam olarak diğer programlama dillerinde ki gibi envai çeşit keyworlere boğmadan bizlere nesne yönelimli programlama prensiplerini sunmaktadır. Yani evet nesne yönelimli programlama Python'da da geçerlidir.

           Python'da kullanılan popüler frameworkler nelerdir?
           Harika diyebileceğim çok güzel Python kütüphaneleri ve frameworkleri var ama bazıları var ki gerçekten çok popüler. Bunlardan bazıları aşağıda listelenmiştir.

           Django
           Tensorflow
           Flask
           Pytorch
           Opencv
           Selenium
           Pyramid
           Theano
           FastAPI
           Tornado
           """,language: "py"))
    }
}
