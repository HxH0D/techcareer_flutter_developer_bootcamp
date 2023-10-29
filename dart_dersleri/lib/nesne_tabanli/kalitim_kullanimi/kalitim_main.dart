import 'package:dart_dersleri/nesne_tabanli/kalitim_kullanimi/ev.dart';
import 'package:dart_dersleri/nesne_tabanli/kalitim_kullanimi/saray.dart';
import 'package:dart_dersleri/nesne_tabanli/kalitim_kullanimi/villa.dart';

void main() {
  var topKapiSarayi = Saray(kuleSayisi: 10, pencereSayisi: 200);

  print(topKapiSarayi.kuleSayisi);
  print(topKapiSarayi.pencereSayisi);

  var bogazVilla = Villa(garajVarMi: true, pencereSayisi: 40);

  print(bogazVilla.garajVarMi);
  print(bogazVilla.pencereSayisi);

  //Type Control
  if (topKapiSarayi is Saray) {
    // Java - instanceOf
    print("topKapiSarayi bir Saray sınıfıdır.");
  } else {
    print("topKapiSarayi bir Saray sınıfı değildir.");
  }

  //Upcasting
  // Subclass > Superclass

  var saray = Saray(kuleSayisi: 3, pencereSayisi: 80);
  Ev ev = saray; // Upcasting

  //Downcasting
  // Superclass > Subclass
  var e = Ev(pencereSayisi: 10);
  Saray s = e as Saray; // Downcasting
}
