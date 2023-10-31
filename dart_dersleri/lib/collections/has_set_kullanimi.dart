import 'dart:collection';

void main(){
  //Tanımlama
  var plakalar = HashSet.from([16,23,6]); //Listei hassete çevirme

  var meyveler = HashSet<String>();

  //Değer Atama
  meyveler.add("Elma");
  meyveler.add("Muz");
  meyveler.add("Kiraz");

  print(meyveler);

  meyveler.add("Amasya Elması");
  print(meyveler);

  String meyve = meyveler.elementAt(2);
  print("Meyve : $meyve");

  for(var meyve in meyveler){
    print("Sonuç : $meyve");

  }

  for(var i=0; i<meyveler.length;i++){
    print("$i. -> ${meyveler.elementAt(i)}");
  }

  meyveler.remove("Muz");
  print(meyveler);

  meyveler.clear;
  print(meyveler);
}