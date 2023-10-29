import 'package:dart_dersleri/nesne_tabanli/a_sinifi.dart';

void main() {
  var a = ASinifi();

  //Standart kullanım
  //print(a.degisken);
  //a.metod();

  //Sanal veya isimsiz nesne. Virtual or Nameless Object
  //print(ASinifi().degisken); // 1.nesne
  //ASinifi().method();//2.nesne

  //Static kullanimi - kotlin(companion object)
  print(ASinifi.degisken);
  ASinifi.metod();
}
