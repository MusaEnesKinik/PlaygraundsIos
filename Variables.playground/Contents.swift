import UIKit   //UIKit Kütüphanesini al buraya getir demek, kütüphane eklerken import ile yapılır

var greeting = "Hello, playground"

var myNumber = 5 * 4
//print(myNumber)
10 * 5

//-------------------- 1. BÖLÜM ---------------------------

//Variables (Değişkemler) & Constants (Sabitler)

//snake_case (kelime arasına alt tire koyarak tanımlama)
//camelCase (ikinci ve sonraki kelimelerin baş harfi büyük tanımlama)

//var ile tanımlama yapıldığında, sonradan tanımlanan değişkenin değeri değiştirilebilir ve programda tanımlanan değişkenler sırayla çalışır

//değişken

//String (Metinler "")

var userName = "Ahmet"
userName.append("o")
userName.lowercased()
userName.uppercased()

var userSurname = "Yılmaz"

userName = "Mehmet"

// sabit

// integer (tam sayı) & double (kesirli sayı) & float (kesirli sayı)

//integer
let userAge = 50 //userAge = 55 //let ile tanımlandığı için değeri değiştirilemez, program hata verir
let number = 4

userAge / number //integer da tam sayı olarak sonuç verdi, virgülden sonrasını göstermez


//double
let pi = 3.14
let userAgeD = 50.0
let numberD = 4.0

userAgeD / numberD

//boolean (True-False) iki değer alır
var myBoolean = false
myBoolean = true //var tanımladığımız için doğru olarak değiştirebiliyoruz

//------------------ 2. BÖLÜM -----------------------(Değişken tipini önden belirlemek)

let myString : String = "50"  //String bir sınıf olduğu için ılk harfi büyük
let anotherNumber : Int = Int(10.5) //burada 10.5 double ama Int(10.5) yaparak double ı Int e çevirdik

let stringNumber : String = String(20) //20 normalde Int bir değer ama burada String(20) ifadesi Int 20 yi String e çevirdi


//Define

let myVeriable : String // myVeriable ı String tanımladık

//İnitialization  (Başlatmak)

myVeriable = "Test"
myVeriable.uppercased() //myVeriable ı büyük harfle yazacak


//---------------------- 3. BÖLÜM ---Diziler (Array) -------------------------------

var myFavoriteMovies = ["Spiderman","Kill Bill","Joker",5,true] as [Any] //Dizi tanımladık ve dizi elemanlarını belirttik. String elemanlı diziye Int 5 değeri ekledik bunu [Any] ile yaptık. Any her hangi bir şey demek. as bir şeyi bir şey gibi ata anlamına geliyor, as ---> casting

//index (eleman) dizi indexleri 0 dan başlar
myFavoriteMovies[0]
myFavoriteMovies[1]
myFavoriteMovies[2]
myFavoriteMovies[3]
myFavoriteMovies[4]

var myStringArray = ["Test","Test2","Test3","Test4"]

myStringArray[0].uppercased() //uppercased() gibi methodlar [Any] tanımlı dizide çalışmaz
myStringArray.count  //myStringArray dizisinin eleman sayısını verir
myStringArray[2] //Dizinin sonuncu elemanını gösterir
myStringArray[myStringArray.count - 1] //Dizinin sonuncu elemanını gösterir
myStringArray[myStringArray.count - 2] //Dizinin sondan bir önceki elemanını gösterir
myStringArray.last  //dizinin sonuncu elemanını gösterir
myStringArray.sort() //Dizinin elemanlasrını alfabetik olarak sıralar


var myNumberArray = [1,2,3,4,5,6,7,1,2,3]

myNumberArray.count
myNumberArray.last
myNumberArray[0]
myNumberArray[0] = 15 // myNumberArray dizisinin 0. indeksindeki elemanı 15 olarak değiştirir
myNumberArray[0]
myNumberArray[0] = 1
myNumberArray.sort()
myNumberArray.append(8) //Yeni eleman ekleme, burada diziye 8 i ekledik
myNumberArray
myNumberArray.last


// -------------------- 4.BÖLÜM --------- Set (Sırasız Koleksiyon) ------------------------------------
// Set de index yok (sıralı şekilde oluşmuyor) ve içinde aynı elemandan sadece bir tane olabiliyor
//Unordered collection, unique elements (sırasız koleksiyon, birden fazla aynı elemanı bir kez gösterir)

var mySet : Set = [1,2,3,4,5,1,2]
var myStringSet : Set = ["a","b","c","a"]

var myInternetArray = [1,2,3,1,2,5,6,2,1]
var myInternetSet = Set(myInternetArray)
print(myInternetArray) //Array, dizi olduğu için dizi elemanları dizi sırasına göre olduğu gibi gösterilir
print(myInternetSet) //Set tanımlı olduğu için sırasız olarak ve unique (aynı elemandan sadece bir tane) görünür


var mySet1 : Set = [1,2,3]
var mySet2 : Set = [3,4,5]

var mySet3 = mySet1.union(mySet2)  // üst satırda tanımlanan mySet1 ve mySet2 yi birleştirir
print(mySet3)


print("----------------------------------")

// ----------------------- 5.BÖLÜM ------------ Sözlük (Dictionary) --------------------

// Dizi gibi ama kullanımında index yerine key value (anahtar kelime) ile yazıyoruz   (key-vallue pairing) anahtar kalime ve değer eşleşmesi

var myFavoriteDirectors = ["Pulp Fiction" : "Tarantino","Lock, Stock" : "Guy Ritchie","The Dark Knight" : "Christopher Nolan"] //kullanımı bu şekilde, "Pulp Fiction" (Anahtar Kelime), "Tarantino" (Değer)
//Sözlüğü bu şekilde oluşturduk

myFavoriteDirectors["Pulp Fiction"] //Sözlük içindeki elemanı göstermek için anahtar kelimeyi tanımladığımız haliyle yazarak gösterdik
myFavoriteDirectors["The Dark Knight"]

myFavoriteDirectors["Pulp Fiction"] = "Quentin Tarantino" // Sözlük içindeki elemanın değerini değiştirme şekli
// ["Pulp Fiction"] anahtar kelime ile hangisinin değişeceğini belirttik, = "Quentin Tarantino" ile yeni değerin ne olacağını belirttik
print(myFavoriteDirectors)

//Sözlüğe yeni eleman ekleme
myFavoriteDirectors["Seven Samurai"] = "Akira Kurisowa"
print(myFavoriteDirectors)

print("----------------------------------")

//Sözlükler oluşturulurken anahtar kelime de değer de String olmak zorunda değil

var myDictionary = ["Run" : 100, "Swim" : 200, "Basketball" : 300] //burada sözlüğü: anahtar kelime String, değer Int olarak tanımladık
myDictionary["Run"]


print("----------------------------------")

//----------------------------- 6.BÖLÜM --- Döngüler----------------------------

//Döngü; bir işlemi belirli bir koşul karşılığında devamlı yapmamıza olanak sağlayan bir yapıdır.

// = (eşittir),   == (eşit mi),kontrol yaparken kullanılır,  < (küçük), > (büyük), <= (küçük eşit), >= (büyük eşit), != (eşit değil)

var myNumber1 = 0  //myNumber1 değişkenini tanımladık ve değerini 1 yaptık

// myNumber1 = myNumber1 + 1 //myNumber1 değişkenine 1 ekler

// myNumber1 += 1  //myNumber1 değişkenine 1 ekler

// myNumber1  //myNumber1 değişkeninin değerini gösterir

// myNumber1 15 ten küçük olduğu sürece ekleme yapmak istersek

// ---------- While Loop (while döngüsü) ------------------- (Şart sağlandığı sürece döngü devam eder)

while myNumber1 < 15 {  //myNumber1 15 ten küçük olduğu sürece {} süslü parantez içinde yazılan işlemi yapacak
    print(myNumber1)    //myNumber1 15 ten küçük olduğu süre ce yazdırır
    myNumber1 += 1      //myNumber1 15 ten küçük olduğu sürece değerini bir arttırır
}

print("----------------------------------")

var characterAlive = true

while characterAlive == true {  //karakter yaşıyor mu kontrolü yapıyoruz
    print("character alive")
    characterAlive = false
}

// (&&) ve-and  (||) veya-or
3 < 5  //3 küçüktür 5
5 <= 3 //5 küçük eşittir 3

5 >= 3 //5 büyük eşittir 3
5 == 5 //5 eşit mi 5 e
4 != 5 //4 eşit değildir 5 e

print("----------------------------------")
// -------------- For Loop (For Döngüsü) -------------------------- () Daha çok dizilerle kullanılır  (Şart sağlandığı sürece işleme devam eder)

var myFruitArray = ["Banana","Apple","Orange"]  //myFruitArray dizisi tanımladık ve dizinin elemanlarını belirttik

for fruit in myFruitArray { //myFruitArray Dizisindeki elemanları fruit değişkenine ata, dizideki elemanlar bitene kadar işleme devam et
    print(fruit)  // fruit değişkeninin değerini yazdırdık
}

print("----------------------------------")

var myNumbers = [10,20,30,40,50,60]

for number in myNumbers {  //myNumbers dizisindeki elemanları number değişkenine atadı
    print(number / 5) //myNumbers dizisindeki bütün elemanları 5 e bölüp yazdırdı
}

print("----------------------------------")

for mynewinteger in  1 ... 5 { //1 den 5 e kadar olan sayıları mynewinteger değişkenine atadı
    print(mynewinteger)        //mynewinteger değişkeninin değerini yazdırdı
    print(mynewinteger * 5)    //mynewinteger dizisinin değerini 5 ile çarptı,    bu iki satırdaki işlemi 1 ... 5 arasında ki her değer için yapacak ve 5 i de yaptıktan sonra döngü bitecek
}

print("----------------------------------")

//---------------------- 7.BÖLÜM ---- If (eğer) kontrolü ------
// Burada döngüdeki gibi sürekli değil bir kez işlem yapılır. Örneğin a şartı doğruysa x + y yap, a şartı yanlışsa x - y yap gibi

var myAge = 23                     // myAge değişkeni tanımladık ve değerini 23 yaptık

if myAge < 20 {                    // eğer myAge 20 den küçükse
    print("30 Yaşından küçüksün")  // 30 yaşından küçüksün yaz
} else {                           // eğer ( myAge < 20 ) koşulu sağlanmıyorsa
    print("30 yaşından büyüksün")  // 30 yaşından büyüksün yaz
}

print("----------------------------------")
// birden fazla koşulu kontrol edeceksek; else if yapısı kullanılır
// (&&) ve-and  (||) veya-or

var myAge1 = 35                          // myAge1 değişkeni 32 olarak tanımladık

if myAge1 < 30 {                         // eğer myAge1 30 dan küçükse
    print("30 dan küçük")                // "30 dan küçük" yazdır
} else if myAge1 > 30 && myAge1 < 40 {   // eğer myAge1 30 dan büyük ve 40 tan küçükse
    print("30 ile 40 arasında")          // "30 ile 40 arasında" yazdır
} else {                                 // eğer yukarıdaki iki koşulda sağlanmıyorsa
    print("40 tan büyük")                // "40 tan büyük" yazdır
}

print("-------------------------------------")

// && (ve-AND) ifadesinde iki koşulda doğru ise true, bir tanesi yanlışsa false değeri döner
// || (veya-OR) ifadesinde koşullardan biri doğru olduğu sürece true değeri döner

3 < 5 && 6 < 7  // 3 küçüktür 5 ve 6 küçüktür 7 ifadesi doğru olduğu için true değeri döner
3 < 5 || 8 < 7  // veya ifadesi kullandık, 3 < 5 ifadesi doğru olduğu için 8 < 7 ifadesi yanlış olsa dahi true sonucu dönecek
6 < 5 || 8 < 7  // veya da iki tarafta yanlış olursa false döner

// And (&&) ve Or (||) u string, integer ve boolean değerlerin hepsinde kullanabiliriz

var myStr = "Haydar"    // myStr değişkenini değeri Haydar olarak tanımladık

if myStr == "Haydar" {  // eğer myStr Haydar ise
    print("Doğru")      // Doğru yazdır
}

print("-------------------------------------")


//---------------------- 8.BÖLÜM ---- Functions (Fonksiyonlar) ---------------

func myFunction() { // Fonksiyon oluşturulurken; fonksiyon ismi ve parantez kullanılır : myFunction() . {} fonksiyonun süslü parantezi içine yazılan her kod o fonksiyon çağırılınca yapılacaktır.
    print("my function")  // fonksiyon içinde yazılan kodlar fonsiyon çağrılmadığı sürece çalışmaz, 274. satırda çağırdığımız için "my function yazacak"
}

myFunction()  // myFunction fonksiyonunu burada çağırdık, bu sayede fonksiyon içindeki kod çalışacak

print("-------------------------------------")

// Input (Girdi) & Output (Çıktı) & Return (Dönüt)

func sumFunction1(a: Int, b: Int) -> Int {  // sumFunction1 tanımladık, integer iki tane değer alacak şekilde, '-> Int' yazarak bir Int döneceğini belirttik
    return a + b
}

let myFunctionVariable = sumFunction1(a: 5, b: 6)
print(myFunctionVariable)

print("-------------------------------------")

func sumFunction (x: Int, y: Int) {  // sumFunction tanımladık, integer iki tane değer alacak şekilde
    print(x + y)                     // verilen iki değeri toplattık
}

sumFunction(x: 10, y: 20)            // sumFunction u çağırdık ve bizden iki tane Int değer girmemizi istedi, girilen iki değer x ve y

print("-------------------------------------")

func logicFunction(k: Int, l: Int) -> Bool {
    
    if k > l {
        return true
    } else {
        return false
    }
    
}

logicFunction(k: -10, l: 0)

print("-------------------------------------")

func logicFunction1(m: Int, n: Int) -> String {
    
    if m > n {
        return "m daha büyük"
    } else {
        return "n daha büyük"
    }
    
}

logicFunction1(m: 10, n: 9)

print("-------------------------------------")


//---------------------- 9.BÖLÜM ---- Opsiyoneller (Optionals) ---------------

var myName : String? //Soru işareti koymak onu optional yapmak demek. Belki olur belki olmaz (String ifadenin değerini tırnak içinde tanımlamadan soru işaret ile opsiyonel olduğunu belirttik)

myName?.uppercased() // Buradaki soru işaretinin anlamı ; belki isim veririm belki vermem, ismi bulursan bu işlemi yap bulamazsan yapma demek
//myName!.uppercased() // Ünlem işaretinin anlamı; eminim bu değer var demk, bu satırda hata verir çünkü burada String değerinin olduğndan emin davrandık fakat tanımlanan satırda değeri yok

// optionals :   ? vs !

var age = "5"

var integer = Int(age) ?? 0 * 5
              // age değeri Int e çevirilemezse 0 değerni işleme dahil edecek, soru işareti koyarak yanına bir değer girdik (değer isteğe bağlı değişir) (yani var age = "absdd" gibi değer olursa 0 * 5 yapılacak)

if let myNumber3 = Int(age) { // Eğer age i integer yapabilirsen aşağıdaki işlemi yap
    print(myNumber3 * 5)
} else {
    print("wrong input")
}
