import 'package:dart_dersleri/nesne_tabanli/composition/filimler.dart';
import 'package:dart_dersleri/nesne_tabanli/composition/kategoriler.dart';
import 'package:dart_dersleri/nesne_tabanli/composition/yonetmenler.dart';

void main() {
  var k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram");
  var k2 = Kategoriler(kategori_id: 2, kategori_ad: "Bilim Kurgu");

  var y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino");
  var y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Christopher Nolan");

  var f1 = Filimler(
    filim_id: 1,
    filim_ad: "Django",
    filim_yil: 2010,
    kategori: k1,
    yonetmen: y1,
  );
  var f2 = Filimler(
    filim_id: 2,
    filim_ad: "Interstellar",
    filim_yil: 2014,
    kategori: k2,
    yonetmen: y2,
  );

  print("Filim id         : ${f2.filim_id}");
  print("Filim adı        : ${f2.filim_ad}");
  print("Filim yılı       : ${f2.filim_yil}");
  print("Filim kategorisi : ${f2.kategori.kategori_ad}");
  print("Filim yönetmeni  : ${f2.yonetmen.yonetmen_ad}");
}
