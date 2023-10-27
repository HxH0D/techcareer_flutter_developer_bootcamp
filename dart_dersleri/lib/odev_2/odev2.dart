/* 
Soru 1: Parametre olarak girilen kilometreyi mile dönüştürdükten sonra geri döndüren bir metod yazınız. Mile = Km x 0.621 
Soru 2: Kenarları parametre olarak girilen ve dikdörtgenin alanını hesaplayan bir metod yazınız.
Soru 3: Parametre olarak girilen sayının faktoriyel değerini hesaplayıp geri döndüren metodu yazınız.
Soru 4: Parametre olarak girilen kelime içinde kaç adet e harfi olduğunu gösteren bir metod yazınız.
Soru 5: Parametre olarak girilen kenar sayısına göre her bir iç açıyı hesaplayıp sonucu geri gönderen metod yazınız.
  • İç açılar toplamı = ((Kenar sayısı - 2) x 180) / Kenar sayısı
Soru 6: Parametre olarak girilen gün sayısına göre maaş hesabı yapan ve elde edilen değeri döndüren metod yazınız.
  • 1 günde 8 saat çalışılabilir.
  • Çalışma saat ücreti : 40TL
  • Mesai saat ücreti : 80YL
  • 150 saat üzeri mesai sayılır.
Soru 7: Parametre olarak girilen otopark süresine göre otopark ücreti hesaplayarak geri döndüren metodu yazınız.
  • 1 saat = 50も
  • 1 saat aşımından sonra her 1 saat, 10 t'dir.
*/
class Odev2 {
  double soru1(double km) {
    return km * 0.621;
  }

  void soru2(double uzunluk, double yukseklik) {
    print("Soru 2: ${uzunluk * yukseklik}") ;
  }

  double soru3(double sayi) {
    double sonuc = 1;
    for (int i = 1; i <= sayi; i++) {
      sonuc *= i;
    }
    return sonuc;
  }

  void soru4(String kelime) {
    int sayac = 0;
    for (int i = 0; i < kelime.length; i++) {
      if (kelime[i].toLowerCase() == "e") {
        sayac++;
      }
    }
    print("Soru 4: $sayac");
  }

  double soru5(int kenarSayisi) {
    double icAciToplam = 0;
    icAciToplam = ((kenarSayisi - 2) * 180) / kenarSayisi;
    return icAciToplam;
  }

  int soru6(int gunSayisi) {
    int calisilanSaat = 0;
    int saatlikUcret = 40;
    int saatlikMesaiUcret = 80;
    int aylikCalismaSuresi = 150;
    int maas = 0;
    calisilanSaat = gunSayisi * 8;
    if (calisilanSaat < aylikCalismaSuresi) {
      maas = calisilanSaat * saatlikUcret;
    } else {
      maas = aylikCalismaSuresi * saatlikUcret;
      maas += (calisilanSaat - aylikCalismaSuresi) * saatlikMesaiUcret;
    }
    return maas;
  }

  int soru7(int parkSuresi){
    int ucret = 0;
    if(parkSuresi == 1){
      ucret = parkSuresi*50;
    }else{
      ucret = 1*50;
      ucret += (parkSuresi-1)*10;
    }
    return ucret;
  }
}
