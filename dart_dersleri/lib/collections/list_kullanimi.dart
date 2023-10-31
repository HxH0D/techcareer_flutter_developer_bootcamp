void main(){
  //Tanımlama
  var plakalar = [16,23,6];
  var meyveler = <String>[];
  //Veri Ekleme
  meyveler.add("Muz");//0
  meyveler.add("Kiraz");//1
  meyveler.add("Elma");//2
  print(meyveler);
  //Güncelleme
  meyveler[1] = "Yeni Kiraz";
  print(meyveler);
  //Insert
  meyveler.insert(1, "Portakal");
  print(meyveler);
  //Veri okuma
  String meyve = meyveler[3];
  print(meyve);

  for(var m in meyveler){
    print("Sonuç : $m");
  }
  //0,1,2,3
  for(var i = 0; i<meyveler.length; i++){
    print("$i. -> ${meyveler[i]}");
  }

  print("Boş kontrol : ${meyveler.isEmpty}");
  print("İçeriyor mu: ${meyveler.contains("Muz")}");

  var liste = meyveler.reversed.toList();
  print(liste);

  meyveler.sort();
  print(meyveler);

  meyveler.removeAt(1);
  print(meyveler);

  meyveler.clear();
  print(meyveler);

}