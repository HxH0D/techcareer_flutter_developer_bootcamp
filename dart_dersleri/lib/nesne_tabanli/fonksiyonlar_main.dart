import 'package:dart_dersleri/nesne_tabanli/fonksiyonlar.dart';

void main (){
  var f = Fonksiyonlar();

  f.selamla();

  String gelenSonuc = f.selamla1();
  print("Gelen Sonuc : $gelenSonuc");

  f.selamla2("Ahmet");

  int gelenSonuc2 = f.toplama(12, 28);
  print("Gelen sonuc 2: $gelenSonuc2");
}