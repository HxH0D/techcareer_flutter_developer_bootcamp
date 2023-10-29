import 'package:dart_dersleri/nesne_tabanli/kalitim_kullanimi/ev.dart';

class Villa extends Ev {
  bool garajVarMi;

  Villa({required this.garajVarMi, required int pencereSayisi}) : super(pencereSayisi: pencereSayisi);
  //syper : üst sınıfı temsil eder(Ev).
  //this : bulunduğu sınıfı temsil eder(Villa).
}
