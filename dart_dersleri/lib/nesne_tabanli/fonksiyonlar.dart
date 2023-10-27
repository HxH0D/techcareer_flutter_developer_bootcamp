class Fonksiyonlar{
  //void : Geri dönüş değeri olmayan
  void selamla(){
    String sonuc = "Merhaba Emre";
    print(sonuc);
  }


  //return : geri dönüş değeri olan
  String selamla1(){
    String sonuc = "Merhaba Emre";
    return sonuc;
  }


  //parametre : Dışarıdan değer alan
  void selamla2(String isim){
    String sonuc = "Merhaba $isim";
    print(sonuc);
  }

  int toplama(int sayi1, int sayi2){
    int toplam = sayi1 + sayi2;
    return toplam;
  }
}