import 'package:dart_dersleri/collections/urunler.dart';

void main(){
  var urun1 = Urunler(id: 1, adi: "Bilgisayar", fiat: 34500);
  var urun2 = Urunler(id: 2, adi: "Tv", fiat: 12000);
  var urun3 = Urunler(id: 3, adi: "Saat", fiat: 25500);

  var urunlerListesi = <Urunler>[];
  urunlerListesi.add(urun1);
  urunlerListesi.add(urun2);
  urunlerListesi.add(urun3);

  for(var urun in urunlerListesi){
    print("Id: ${urun.id} - Ad: ${urun.adi} - Fiyat: ${urun.fiat}₺");
  }

  print("-------------------- Fiat : Artan ------------------------------------------");
  Comparator<Urunler> siralama1 = (x , y) => x.fiat.compareTo(y.fiat);
  urunlerListesi.sort(siralama1);
  for(var urun in urunlerListesi){
    print("Id: ${urun.id} - Ad: ${urun.adi} - Fiyat: ${urun.fiat}₺");
  }

  print("-------------------- Fiat : Azalan ------------------------------------------");
  Comparator<Urunler> siralama2 = (x , y) => y.fiat.compareTo(x.fiat);
  urunlerListesi.sort(siralama2);
  for(var urun in urunlerListesi){
    print("Id: ${urun.id} - Ad: ${urun.adi} - Fiyat: ${urun.fiat}₺");
  }

  print("-------------------- Ad : Artan ------------------------------------------");
  Comparator<Urunler> siralama3 = (x , y) => x.adi.compareTo(y.adi);
  urunlerListesi.sort(siralama3);
  for(var urun in urunlerListesi){
    print("Id: ${urun.id} - Ad: ${urun.adi} - Fiyat: ${urun.fiat}₺");
  }

  print("-------------------- Ad : Azalan ------------------------------------------");
  Comparator<Urunler> siralama4 = (x , y) => y.adi.compareTo(x.adi);
  urunlerListesi.sort(siralama3);
  for(var urun in urunlerListesi){
    print("Id: ${urun.id} - Ad: ${urun.adi} - Fiyat: ${urun.fiat}₺");
  }


  print("----------------- Filtreleme 1 --------------------");
  Iterable<Urunler> filtreleme1 = urunlerListesi.where((urunNesnesi) {
    return urunNesnesi.fiat > 25000 && urunNesnesi.fiat<30000;
  });

  var liste1 = filtreleme1.toList();
  for(var urun in liste1){
    print("Id: ${urun.id} - Ad: ${urun.adi} - Fiyat: ${urun.fiat}₺");
  }

  print("----------------- Filtreleme 2 --------------------");
  Iterable<Urunler> filtreleme2 = urunlerListesi.where((urunNesnesi) {
    return urunNesnesi.adi.contains("a");
  });

  var liste2 = filtreleme2.toList();
  for(var urun in liste2){
    print("Id: ${urun.id} - Ad: ${urun.adi} - Fiyat: ${urun.fiat}₺");
  }

  // Bitirme projesinde filitreleme ve sıralama yapmayı kullanabiliriz.


}