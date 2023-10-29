import 'package:dart_dersleri/nesne_tabanli/konserve_boyut.dart';

void main() {
  ucretHesapla(125, KonserveBoyut.orta);
}

void ucretHesapla(int adet, KonserveBoyut boyut) {
  switch (boyut) {
    case KonserveBoyut.kucuk:
      print("Toplam Ücret: ${24 * adet} ₺");
      break;
    case KonserveBoyut.orta:
      print("Toplam Ücret: ${36 * adet} ₺");
      break;

    case KonserveBoyut.buyuk:
      print("Toplam Ücret: ${49 * adet} ₺");
      break;
  }
}
