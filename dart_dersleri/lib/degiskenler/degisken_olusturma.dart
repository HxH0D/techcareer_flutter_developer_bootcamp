void main() {
  var ogrenciAdi = "Emre";
  var ogrenciYas = 20;
  var ogrenciBoy = 1.72;
  var ogrenciBasharf = 'A';
  var ogrenciDevamEdiyormu = true;

  print(ogrenciAdi);
  print(ogrenciYas);
  print(ogrenciBoy);
  print(ogrenciBasharf);
  print(ogrenciDevamEdiyormu);

  int urun_id = 3416;
  String urun_adi = "Kol Saati";
  int urun_adet = 100;
  double urun_fiyat = 149.99;
  String urun_tedarikci = "Rolex";

  print("Ürün id        : $urun_id"); //Swift \(), java +, kotlin $
  print("Ürün Adı       : $urun_adi");
  print("Ürün Adet      : $urun_adet");
  print("Urun Fiat      : $urun_fiyat \$");
  print("Ürün Tedarikci : $urun_tedarikci");

  int a = 10;
  int b = 20;

  print("$a * $b = ${a * b}");

  //Sabitler
  // not:Mülakatlarda güzel sorular gelebilir

  //final, const
  //Java(final), Swift(let), Kotlin(val)

  int sayi = 60;

  print(sayi);

  sayi = 140;

  print(sayi);

  final int numara = 70;
  // final Değişkenlerde ve nesne tabanlı yapılarda kullanılır.
  // final Çalışma: Kodlamayı çalıştırdığımızda hafızada oluşur.
  print(numara);
  //numara = 50; hata verir, değişken finel olduğundan değiştirlemez

  const double x = 45.7;
  // const Görsel nesnelerde kullanılır.
  // const Çalışma: Değişken tanımlanırken hasızada oluşur.

  //Tür Dönüsümü - Type Casting
  //1.Sayısaldan Sayısala
  int i = 78;
  double d = 43.894;
  int sonuc1 = d.toInt();
  double sonuc2 = i.toDouble();
  print(sonuc1);
  print(sonuc2);

  //2.Metinden Sayısala
  String sonuc3 = i.toString();
  String sonuc4 = d.toString();
  print(sonuc2);
  print(sonuc3);

  //3.Sayısaldan Metine
  String yazi1 = "67";
  String yazi2 = "38.25";

  int sonuc5 = int.parse(yazi1);
  double sonuc6 = double.parse(yazi2);
  print(sonuc5);
  print(sonuc6);
}
