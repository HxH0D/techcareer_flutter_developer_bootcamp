import 'package:dart_dersleri/nesne_tabanli/composition/kategoriler.dart';
import 'package:dart_dersleri/nesne_tabanli/composition/yonetmenler.dart';

class Filimler {
  int filim_id;
  String filim_ad;
  int filim_yil;
  Kategoriler kategori; //composition : Kategoriler sınıfına erişim
  Yonetmenler yonetmen; //composition : Yönetmenler sınıfına erişim

  Filimler({
    required this.filim_id,
    required this.filim_ad,
    required this.filim_yil,
    required this.kategori,
    required this.yonetmen,
  });
}
