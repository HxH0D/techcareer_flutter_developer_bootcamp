void main (){
  //Nullable - Null Safety - Optional(Swift)
  String str = "Merhaba";

  //Tanımlama
  String? mesaj = null; // Swift : nill

  //mesaj = "Hello";


  // Yöntem 1 : null ise uygulama çökmez, null deüilse çalışır.
  print("Yöntem 1: ${mesaj?.toUpperCase()}");

  // Yöntem 2 :
  //print("Yöntem 2: ${mesaj!.toLowerCase()}");

  // Yöntem 3 :
  if(mesaj != null){
    print("Yöntem 3: ${mesaj.toUpperCase()}");

  }else{
    print("Mesaj Nulldur");

  }
}