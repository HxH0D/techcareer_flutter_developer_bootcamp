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

import 'package:dart_dersleri/odev_2/odev2.dart';

void main(){

  var odev2 = Odev2();

  print("Soru 1: ${odev2.soru1(10)}");
  print("------------------------------------------------");

  odev2.soru2(10, 25);
  print("------------------------------------------------");

  print("Soru 3: ${odev2.soru3(12)}");
  print("------------------------------------------------");

  odev2.soru4("Yusuf Emre Altun");
  print("------------------------------------------------");

  print("Soru 5: ${odev2.soru5(5)}");
  print("------------------------------------------------");

  print("Soru 6: ${odev2.soru6(27)}");
  print("------------------------------------------------");

  print("Soru 7: ${odev2.soru7(5)}");
  print("------------------------------------------------");




}
