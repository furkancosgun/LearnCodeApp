//
//  HomeView.swift
//  LearnCodeApp
//
//  Created by Furkan on 16.01.2023.
//

import SwiftUI

struct HomeView: View {
  
    private var colors : [UIColor] = [.green,.magenta,.red,.yellow]
    var body: some View {
        ScrollView(.vertical){
            VStack(alignment: .leading){
                HStack{Spacer()}
                Text("Home Feed").bold().font(.largeTitle).foregroundColor(.white)
                    
                Spacer().frame(height: 50)
                
                Text("Python").bold().font(.title2).foregroundColor(.white)
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(0...colors.count - 1,id:\.self){ index in
                            CardView(course: pythonLessons[index], headColor: colors[index])
                        }
                    }
                }
                
                Spacer().frame(height: 50)
                
                Text("JavaScript").bold().font(.title2).foregroundColor(.white)
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(0...colors.count - 1,id:\.self){ index in
                            CardView(course: javaScriptLessons[index], headColor: colors[index])
                        }
                    }
                }
            }
        }
        .padding()
        .background(.blue)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}



private var pythonLessons : [Lesson]  =
[
    Lesson(id:1,title: "what is python", subTitle: "As the title suggests, we will talk about Python.", content: """
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
           """,language: "py"),
    
    Lesson(id:2,title: "Python Variables And Data Types", subTitle: "We'll talk about how to define variables in Python and commonly used data types.", content: """
Yaygın Veri Türleri
Python'da yazdığımız şeylerin(verilerin) örneğin bir yazı gibi yada bir sayı gibi, türleri vardır. Bunlardan en yaygın 3 tanesi string, integer ve floattır.

String, bizlerin '(tek tırnak) yada "(çift tırnak) içine sarmaladığımız şeylerdir.

Örnek:
"Oğuzhan", 'oğuzhan', '5' = String

Integer tırnak içerisine koymadığımız tam sayılardır.
Örnek:
1,2,3,-1,-2,6 = Integer

Float, tırnak içerisine koymadığımız noktalı sayılardır.

Örnek:
1.2, 2.5, -1.2 = Float

String Concatenation(Birleştirme) ve Replication(Tekrarlama)
Artı(+) operatürünü iki adet sayı arasına(float yada integer tipli veri) koyduğumuzda, Python otomatik olarak bu değerlerin toplanılması gerektiğini anlayıp matematiksel olarak buna toplama cevabını veriyor.

Peki artı operatörünü biz iki string arasına koyarsak ne olacaktır?
Python sağa ve sola bakıp bunlar string diyip stringler matematikteki gibi toplanamaz diyip otomatik olarak birleştirecektir.

Örnek:
'oğuzhan' + 'çelikarslan' yazıp interaktif shell üzerinde entera basarsak bu otomatik olarak. oğuzhançelikarslan olarak yorumlanacaktır.

Çarpı(*) iki adet sayı arasına(float yada integer tipli veri) koyduğumuzda, Python otomatik olarak bu değerlerin çarpılması gerektiğini anlayıp matematiksel olarak buna çarpma cevabını veriyor.

Peki çarpı operatörünü biz iki string arasına koyarsak ne olacaktır?
Python sağa ve sola bakıp bunlar string diyip stringler matematikteki gibi çarpılamaz diyip otomatik olarak hata verecektir. Burada şu durumda vardır. Eğer bir string ile bir integerı çarpmaya kalkarsanız Python otomatik olarak bu sayı kere o yazıyı tekrarlayacaktır.

Örnek:
'oğuzhan' * 5 ifadesinin yorumlanması aşağıdaki gibi olacaktır.
'oğuzhanoğuzhanoğuzhanoğuzhanoğuzhan'
(Yukarıda ki ifadeyi elimle yazmaya üşendiğim için interaktif shell üzerinde kod ile yaptım nede olsa yazılımcı olmak bunu gerektirir değil mi :)).

Değişkenler
Bizler uygulama içerisinde yazmış olduğumuz ifadeler yorumlandıktan sonra bu değerleri saklamak isteriz ki programın içerisinde tekrar tekrar kullanabilelim.
İşte bu gibi durumlarda yardımımıza değişkenler koşuyor. Değişkenlere biz bir değer veriyorum değişken ise bu değeri bilgisayarın hafızasında depoluyor. Daha sonraları biz bu değişkene seslendiğimizde, bilgisayar gidiyor bellekten bu değeri alıyor ve getiriyor.

Değişkenlerin daha sonları çağırılmak üzere bir isimleri olur.
Bu isimlerin seçiminde bazı kurallar vardır.

Değişken isimleri rakam yada sayı ile başlayamaz.
Değişken isimleri tırnak, - veya $ gibi özel karakterleri içeremez.
Değişken isimi 2 kelimeden oluşuyorsa araya boşluk bırakılamaz.
Neler yapabiliriz?
İllaki rakam kullanmak istiyorsak "isim1" gibi sonda veya ortada kullanabiliriz.
İki kelimeden oluşuyorsa isimSoyisim veya isim_soyisim şeklinde tanımlamalar yapabiliriz. İlk stile camel case, ikinci stilede snake_case denilmektedir.
Değişken nasıl tanımlanır?
Öncelikle seçilebilir bir değişken ismi seçiyoruz ardından = koyarak içerisine yerleştirmek istediğimiz veriyi koyuyoruz.
Örnek:
isim = 'Oğuzhan'
Python yukarıda ki ifadeyi direkt olarak string olarak algılayacaktır. Çünkü tırnak ifadeleri içine aldık. Python'da diğer bazı dillerde olduğu gibi değişkenler için tip belirtmek zorunda değiliz.

Örnek:
sayi = 10
Yukarıda ki tırnak işaretleri içersinde olmadığı ve noktalı sayı olmadığı için otomatik olarak float olarak algılanacaktır.

Aynı değişken ismine tekrardan bir atama yaparsanız Python otomatik olarak eski değeri devre dışı bırakacaktır.
isim = 'Tayfun'
Yukarıda ki ilk kodda isim Oğuzhana eşitti daha sonra isim ifadesi Tayfuna eşit oldu. Bu durumda isim ifadesini interaktif şele yazıp entera basmış olsaydık ekrana Tayfun ifadesi yazacaktı.

Yardımcı Tip Değiştirme Fonksiyonları
int(), str() gibi float() gibi bazı yardımcı fonksiyonlar sayesinde bizler tanımlamış olduğumuz değişkenlerin tiplerini değiştirebiliriz.

Örnek:
sayi = 10 bir integer tipinde değişkendir. str(sayi) dediğimizde artık bu ifade bir string ifadeye dönüşmüştür ve artık '10' şeklinde temsil edilir.
Bir başka örnekle sayi = 10 ifadesini float(sayi) içerisine alırsak bu durumda artık bu ifade 10.0 olarak bir noktalı sayıya dönüşmektedir.
Bu yardımcı fonksiyonlar çok işimize yarayacaktır.

Uyarı: Değişken isimleri seçerken içerdiği veriyi ifade edecek şekilde seçilmelidir. Örneğin isim yazıp içerisinde float bir sayı tutulmamalıdır. Eğer bir değişkenin ismi, isim olarak belirtilmişse bu durumda bu değişkenin içerisinde oğuzhan, tayfun vb değerler tutulmalıdır. Bu sayede kodunuzun hem okunabilirliği daha kolay olacak hemde ileride dönüp kodunuza baktığınızda daha kolay anlayıp hataları düzeltebileceksiniz.
""",language: "py"),
    Lesson(id:3,title: "If flow control statement in Python", subTitle: "About the Python control expression if.", content: """
if <condition>:
    <clause>
Python
if anahtar kelimesini yazdıktan sonra eğer ki condition kısmı doğruysa, if'in alt kısmında ki clause kısmı çalışmaya başlayacaktır.

Yani eğer bu böyleyse sen çalış gibi bir yorumlanması olacaktır.

if-else ifadesi
Else ifadesi ise, eğer ki if kısmının şart(condition) kısmı doğru değilse çalışacak kısımdır.

isim = "oguzhan"
alinan_isim = input('isim')

if isim == alinan_isim:
    print('Doğru bildiniz')
else:
    print('yanlış bildiniz.')
Python
Yukarıda ki örneği incelediğimizde eğer klavyeden girilen isim oguzhan değilse, akış kontrol ifadesinin if kısmı değil else kısmı çalışacaktır.
Bunun sonucunda da ekrana yanlış bildiniz yazılacaktır.

if-elif-else ifadesi
Ara bir koşul denemek için kullanabiliriz. İhtiyacınız kadar elif kullanabilirsiniz.

isim = "oguzhan"

alinan_isim = input('isim')

if isim == alinan_isim:
    print('Doğru bildiniz')
elif alinan_isim == 'oguz':
    print('Doğru yaklaştınız')
elif alinan_isim == "ogu":
    print('dahada yaklaştınız')
else:
    print('Yanlış bildiniz.')
Python
Yukarıda ki örneği incelediğinizde eğer ki klavyeden girilen isim 'ogu' ise otomatik olarak eliflerden isim == 'ogu' ya eşitse olan kısım çalışacaktır. Bunun sonucunda ise ekrana dahada yaklaştınız yazacaktır.
""",language: "py"),
    Lesson(id:4,title: "Lists in Python", subTitle: "Thanks to lists, we can store data consisting of different types of data in a variable. Then we can add, remove or delete elements from this list.", content: """
Python'da iki şekilde liste oluşturabiliriz.

# Yöntem 1
liste = []
# Yöntem 2
liste = list()
Python
Python'da oluşturduğumuz listeye default olarak bazı veriler ekleyebiliriz.

liste = ["elma", "armut", True, False, 1, 1.23]
Python
Bir listenin içerisinde kaç adet eleman olduğunu görmek için len fonksiyonunu kullanabiliriz.

eleman_sayisi = len(liste)
Python
Bir listenin elemanlarına index numaraları ile erişebiliriz. Listelerin index numarası 0'dan başlamaktadır.
Örneğin bir listenin birinci elemanını aşağıda ki örnekte ki gibi çağırabiliriz. Cevap ise armut olacaktır.

birinci_eleman = liste[1]
Python
Bir listenin tüm elemanlarını itere etmek için for döngüsüne sokabiliriz.

for item in liste:
    print(item)
Python
Listelerin belli bir aralığını seçebiliriz. Aşağıda ki örnekte 0. eleman dahil 2. eleman dahil olmayacaktır ve seçilecek elemanlar ["elma", "armut"] olacaktır.

aralik = liste[0:2]
Python
Biliyoruz ki index numaraları ile dizinin her elemanına erişebiliyoruz. Peki negatif değerler kullanırsak?
örneğin liste[-1] dediğimizde tersten ilk değeri alırız yani 1.23 değeri karşımıza gelecektir. Burada dikkat etmemiz gereken maximum olarak -elemansayisini kullanın. Yoksa hata alabilirsiniz.

Listenin bir öğesini değiştirmek gerçekten çok kolay. Örneğin listenin sıfırıncı elemanını aşağıda ki gibi değiştirebilirsiniz.

liste[0] = "Oğuzhan"
Python
İki listeyi birleştirmek için artı operatörünü kullanabiliriz.

tek_rakamlar = [1,3,5,7,9]
cift_rakamlar = [0,2,4,6,8]

birlesmis_liste = tek_rakamlar + cift_rakamlar

Python
dir fonksiyonunu kullanarak listenin tüm methodlarına erişebilirsiniz. İhtiyacınız olduğunda buradan kopya çekebilirsiniz.

print(dir(liste))

# Aşağıda ki çıktıdan bu liste üzerinde erişebileceğiniz her şeyi görebilirsiniz.
['__add__', '__class__', '__contains__', '__delattr__', '__delitem__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__getitem__', '__gt__', '__hash__', '__iadd__', '__imul__', '__init__', '__init_subclass__', '__iter__', '__le__', '__len__', '__lt__', '__mul__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__reversed__', '__rmul__', '__setattr__', '__setitem__', '__sizeof__', '__str__', '__subclasshook__', 'append', 'clear', 'copy', 'count', 'extend', 'index', 'insert', 'pop', 'remove', 'reverse', 'sort']
Python
Listeye elaman eklemek için append methodunu kullanabiliriz.

liste.append("yeni veri")
Python
Bir listeyi tamamen temizlemek için clear methodunu kullanabiliriz.

liste.clear()
Python
Bir listenin içerinde bir elemanın kaç kere geçtiğini bulmak için count methodu kullanılabilir.

liste.count('elma')
Python
Bir elemanın index numarasını öğrenmek için index methodu kullanılabilir.

liste.index('elma')
Python
Bir listenin son elemanını listeden çıkartmak için pop() methodu kullanılır.

liste.pop()
""",language: "py"),
]




private var javaScriptLessons : [Lesson]  =
[
    Lesson(id:1,title: "what is JavaScript", subTitle: "As the title suggests, we will talk about JavaScript.", content: """
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
           """,language: "js"),
    
    Lesson(id:2,title: "JavaScript Variables And Data Types", subTitle: "We'll talk about how to define variables in Python and commonly used data types.", content: """
Yaygın Veri Türleri
Python'da yazdığımız şeylerin(verilerin) örneğin bir yazı gibi yada bir sayı gibi, türleri vardır. Bunlardan en yaygın 3 tanesi string, integer ve floattır.

String, bizlerin '(tek tırnak) yada "(çift tırnak) içine sarmaladığımız şeylerdir.

Örnek:
"Oğuzhan", 'oğuzhan', '5' = String

Integer tırnak içerisine koymadığımız tam sayılardır.
Örnek:
1,2,3,-1,-2,6 = Integer

Float, tırnak içerisine koymadığımız noktalı sayılardır.

Örnek:
1.2, 2.5, -1.2 = Float

String Concatenation(Birleştirme) ve Replication(Tekrarlama)
Artı(+) operatürünü iki adet sayı arasına(float yada integer tipli veri) koyduğumuzda, Python otomatik olarak bu değerlerin toplanılması gerektiğini anlayıp matematiksel olarak buna toplama cevabını veriyor.

Peki artı operatörünü biz iki string arasına koyarsak ne olacaktır?
Python sağa ve sola bakıp bunlar string diyip stringler matematikteki gibi toplanamaz diyip otomatik olarak birleştirecektir.

Örnek:
'oğuzhan' + 'çelikarslan' yazıp interaktif shell üzerinde entera basarsak bu otomatik olarak. oğuzhançelikarslan olarak yorumlanacaktır.

Çarpı(*) iki adet sayı arasına(float yada integer tipli veri) koyduğumuzda, Python otomatik olarak bu değerlerin çarpılması gerektiğini anlayıp matematiksel olarak buna çarpma cevabını veriyor.

Peki çarpı operatörünü biz iki string arasına koyarsak ne olacaktır?
Python sağa ve sola bakıp bunlar string diyip stringler matematikteki gibi çarpılamaz diyip otomatik olarak hata verecektir. Burada şu durumda vardır. Eğer bir string ile bir integerı çarpmaya kalkarsanız Python otomatik olarak bu sayı kere o yazıyı tekrarlayacaktır.

Örnek:
'oğuzhan' * 5 ifadesinin yorumlanması aşağıdaki gibi olacaktır.
'oğuzhanoğuzhanoğuzhanoğuzhanoğuzhan'
(Yukarıda ki ifadeyi elimle yazmaya üşendiğim için interaktif shell üzerinde kod ile yaptım nede olsa yazılımcı olmak bunu gerektirir değil mi :)).

Değişkenler
Bizler uygulama içerisinde yazmış olduğumuz ifadeler yorumlandıktan sonra bu değerleri saklamak isteriz ki programın içerisinde tekrar tekrar kullanabilelim.
İşte bu gibi durumlarda yardımımıza değişkenler koşuyor. Değişkenlere biz bir değer veriyorum değişken ise bu değeri bilgisayarın hafızasında depoluyor. Daha sonraları biz bu değişkene seslendiğimizde, bilgisayar gidiyor bellekten bu değeri alıyor ve getiriyor.

Değişkenlerin daha sonları çağırılmak üzere bir isimleri olur.
Bu isimlerin seçiminde bazı kurallar vardır.

Değişken isimleri rakam yada sayı ile başlayamaz.
Değişken isimleri tırnak, - veya $ gibi özel karakterleri içeremez.
Değişken isimi 2 kelimeden oluşuyorsa araya boşluk bırakılamaz.
Neler yapabiliriz?
İllaki rakam kullanmak istiyorsak "isim1" gibi sonda veya ortada kullanabiliriz.
İki kelimeden oluşuyorsa isimSoyisim veya isim_soyisim şeklinde tanımlamalar yapabiliriz. İlk stile camel case, ikinci stilede snake_case denilmektedir.
Değişken nasıl tanımlanır?
Öncelikle seçilebilir bir değişken ismi seçiyoruz ardından = koyarak içerisine yerleştirmek istediğimiz veriyi koyuyoruz.
Örnek:
isim = 'Oğuzhan'
Python yukarıda ki ifadeyi direkt olarak string olarak algılayacaktır. Çünkü tırnak ifadeleri içine aldık. Python'da diğer bazı dillerde olduğu gibi değişkenler için tip belirtmek zorunda değiliz.

Örnek:
sayi = 10
Yukarıda ki tırnak işaretleri içersinde olmadığı ve noktalı sayı olmadığı için otomatik olarak float olarak algılanacaktır.

Aynı değişken ismine tekrardan bir atama yaparsanız Python otomatik olarak eski değeri devre dışı bırakacaktır.
isim = 'Tayfun'
Yukarıda ki ilk kodda isim Oğuzhana eşitti daha sonra isim ifadesi Tayfuna eşit oldu. Bu durumda isim ifadesini interaktif şele yazıp entera basmış olsaydık ekrana Tayfun ifadesi yazacaktı.

Yardımcı Tip Değiştirme Fonksiyonları
int(), str() gibi float() gibi bazı yardımcı fonksiyonlar sayesinde bizler tanımlamış olduğumuz değişkenlerin tiplerini değiştirebiliriz.

Örnek:
sayi = 10 bir integer tipinde değişkendir. str(sayi) dediğimizde artık bu ifade bir string ifadeye dönüşmüştür ve artık '10' şeklinde temsil edilir.
Bir başka örnekle sayi = 10 ifadesini float(sayi) içerisine alırsak bu durumda artık bu ifade 10.0 olarak bir noktalı sayıya dönüşmektedir.
Bu yardımcı fonksiyonlar çok işimize yarayacaktır.

Uyarı: Değişken isimleri seçerken içerdiği veriyi ifade edecek şekilde seçilmelidir. Örneğin isim yazıp içerisinde float bir sayı tutulmamalıdır. Eğer bir değişkenin ismi, isim olarak belirtilmişse bu durumda bu değişkenin içerisinde oğuzhan, tayfun vb değerler tutulmalıdır. Bu sayede kodunuzun hem okunabilirliği daha kolay olacak hemde ileride dönüp kodunuza baktığınızda daha kolay anlayıp hataları düzeltebileceksiniz.
""",language: "js"),
    Lesson(id:3,title: "If flow control statement in JavaScript", subTitle: "About the Python control expression if.", content: """
if <condition>:
    <clause>
Python
if anahtar kelimesini yazdıktan sonra eğer ki condition kısmı doğruysa, if'in alt kısmında ki clause kısmı çalışmaya başlayacaktır.

Yani eğer bu böyleyse sen çalış gibi bir yorumlanması olacaktır.

if-else ifadesi
Else ifadesi ise, eğer ki if kısmının şart(condition) kısmı doğru değilse çalışacak kısımdır.

isim = "oguzhan"
alinan_isim = input('isim')

if isim == alinan_isim:
    print('Doğru bildiniz')
else:
    print('yanlış bildiniz.')
Python
Yukarıda ki örneği incelediğimizde eğer klavyeden girilen isim oguzhan değilse, akış kontrol ifadesinin if kısmı değil else kısmı çalışacaktır.
Bunun sonucunda da ekrana yanlış bildiniz yazılacaktır.

if-elif-else ifadesi
Ara bir koşul denemek için kullanabiliriz. İhtiyacınız kadar elif kullanabilirsiniz.

isim = "oguzhan"

alinan_isim = input('isim')

if isim == alinan_isim:
    print('Doğru bildiniz')
elif alinan_isim == 'oguz':
    print('Doğru yaklaştınız')
elif alinan_isim == "ogu":
    print('dahada yaklaştınız')
else:
    print('Yanlış bildiniz.')
Python
Yukarıda ki örneği incelediğinizde eğer ki klavyeden girilen isim 'ogu' ise otomatik olarak eliflerden isim == 'ogu' ya eşitse olan kısım çalışacaktır. Bunun sonucunda ise ekrana dahada yaklaştınız yazacaktır.
""",language: "js"),
    Lesson(id:4,title: "Lists in JavaScript", subTitle: "Thanks to lists, we can store data consisting of different types of data in a variable. Then we can add, remove or delete elements from this list.", content: """
Python'da iki şekilde liste oluşturabiliriz.

# Yöntem 1
liste = []
# Yöntem 2
liste = list()
Python
Python'da oluşturduğumuz listeye default olarak bazı veriler ekleyebiliriz.

liste = ["elma", "armut", True, False, 1, 1.23]
Python
Bir listenin içerisinde kaç adet eleman olduğunu görmek için len fonksiyonunu kullanabiliriz.

eleman_sayisi = len(liste)
Python
Bir listenin elemanlarına index numaraları ile erişebiliriz. Listelerin index numarası 0'dan başlamaktadır.
Örneğin bir listenin birinci elemanını aşağıda ki örnekte ki gibi çağırabiliriz. Cevap ise armut olacaktır.

birinci_eleman = liste[1]
Python
Bir listenin tüm elemanlarını itere etmek için for döngüsüne sokabiliriz.

for item in liste:
    print(item)
Python
Listelerin belli bir aralığını seçebiliriz. Aşağıda ki örnekte 0. eleman dahil 2. eleman dahil olmayacaktır ve seçilecek elemanlar ["elma", "armut"] olacaktır.

aralik = liste[0:2]
Python
Biliyoruz ki index numaraları ile dizinin her elemanına erişebiliyoruz. Peki negatif değerler kullanırsak?
örneğin liste[-1] dediğimizde tersten ilk değeri alırız yani 1.23 değeri karşımıza gelecektir. Burada dikkat etmemiz gereken maximum olarak -elemansayisini kullanın. Yoksa hata alabilirsiniz.

Listenin bir öğesini değiştirmek gerçekten çok kolay. Örneğin listenin sıfırıncı elemanını aşağıda ki gibi değiştirebilirsiniz.

liste[0] = "Oğuzhan"
Python
İki listeyi birleştirmek için artı operatörünü kullanabiliriz.

tek_rakamlar = [1,3,5,7,9]
cift_rakamlar = [0,2,4,6,8]

birlesmis_liste = tek_rakamlar + cift_rakamlar

Python
dir fonksiyonunu kullanarak listenin tüm methodlarına erişebilirsiniz. İhtiyacınız olduğunda buradan kopya çekebilirsiniz.

print(dir(liste))

# Aşağıda ki çıktıdan bu liste üzerinde erişebileceğiniz her şeyi görebilirsiniz.
['__add__', '__class__', '__contains__', '__delattr__', '__delitem__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__getitem__', '__gt__', '__hash__', '__iadd__', '__imul__', '__init__', '__init_subclass__', '__iter__', '__le__', '__len__', '__lt__', '__mul__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__reversed__', '__rmul__', '__setattr__', '__setitem__', '__sizeof__', '__str__', '__subclasshook__', 'append', 'clear', 'copy', 'count', 'extend', 'index', 'insert', 'pop', 'remove', 'reverse', 'sort']
Python
Listeye elaman eklemek için append methodunu kullanabiliriz.

liste.append("yeni veri")
Python
Bir listeyi tamamen temizlemek için clear methodunu kullanabiliriz.

liste.clear()
Python
Bir listenin içerinde bir elemanın kaç kere geçtiğini bulmak için count methodu kullanılabilir.

liste.count('elma')
Python
Bir elemanın index numarasını öğrenmek için index methodu kullanılabilir.

liste.index('elma')
Python
Bir listenin son elemanını listeden çıkartmak için pop() methodu kullanılır.

liste.pop()
""",language: "js"),
]

