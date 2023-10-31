import 'dart:collection';

void main (){
  //Tanımlama
  var sayilar = {"Bir":1,"İki":2};
  var iller = HashMap<int, String>();
  //Değer atama
  iller[16] = "BURSA";
  iller[34] = "İSTANBUL";
  print(iller);

  //Güncelleme
  iller[16] = "YENİ BURSA"; print(iller);
  //Veri okuma
  String? il = iller[34];
  if(il != null){
    print("İl: $il");
  }

  print("Boyut: ${iller.length}");
  print("Boş kontrol: ${iller.isEmpty}");
  print("İçeriyor Mu: ${iller.containsValue("İSTANBUL")}");

  var anahtarlar = iller.keys;

  for (var a in anahtarlar){
    print("$a -> ${iller[a]}");
  }

  iller.remove(16);
  print(iller);
  iller.clear();
  print(iller);

}