import 'package:dart_dersleri/nesne_tabanli/araba.dart';

void main() {
  //Nesne Oluşturma.
  var bmw = Araba(renk: "Mavi", hiz: 280, calisiyorMu: true);
  //Değer okuma.
  print("-------------------------------------");
  print("Renk         : ${bmw.renk}");
  print("Hız          : ${bmw.hiz}");
  print("Çalışıyor Mu : ${bmw.calisiyorMu}");

  //Değer atama
  bmw.hiz = 70;
  print("-------------------------------------");
  print("Renk         : ${bmw.renk}");
  print("Hız          : ${bmw.hiz}");
  print("Çalışıyor Mu : ${bmw.calisiyorMu}");

  //Nesne Oluşturma.
  var sahin = Araba(renk: "Beyaz", hiz: 10, calisiyorMu: true);
  //Değer okuma.
  sahin.bilgiAl();
  sahin.durdur();
  sahin.bilgiAl();
  sahin.calistir();
  sahin.bilgiAl();

  sahin.hizlan(120);
  sahin.bilgiAl();
  sahin.yavasla(25);





}
