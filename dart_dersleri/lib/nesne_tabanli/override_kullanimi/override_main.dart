import 'package:dart_dersleri/nesne_tabanli/override_kullanimi/hayvan.dart';
import 'package:dart_dersleri/nesne_tabanli/override_kullanimi/kedi.dart';
import 'package:dart_dersleri/nesne_tabanli/override_kullanimi/kopek.dart';
import 'package:dart_dersleri/nesne_tabanli/override_kullanimi/memeli.dart';

void main() {
  var hayvan = Hayvan();
  var memeli = Memeli();
  var kedi = Kedi();
  var kopek = Kopek();

  hayvan.sesCikar(); //Kalıtım yok, kendş metoduna erişiyor.
  memeli.sesCikar(); //Kalıtım ver, ust sınıfın metoduna erişiyor.
  kedi.sesCikar(); //Kalıtım var, kendi metoduna erişiyor.
  kopek.sesCikar(); //Kalıtım var, kendi metoduna erişiyor.
}
