void main (){
  //1.Compile Error
  //int x = 10

  //2.Runtime Error(Exception)
  var liste = <String>[];
  liste.add("Ali");
  liste.add("Ece");




  try{
    String isim = liste[2];
    print("Gelen İsim : $isim");
  }catch(e){
    print("Listenin boyutunu aşdınız");
  }
}