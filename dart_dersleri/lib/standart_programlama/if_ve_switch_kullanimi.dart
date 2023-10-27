void main() {
  int yas = 20;
  String isim = "Emre";

  if (yas >= 18) {
    print("Reşitsiniz");
  } else {
    print("Reşit Değilsiniz");
  }

  if (isim == "Emre") {
    print("Merhaba Emre");
  } else if (isim == "Mehmet") {
    print("Merhaba Mehmet");
  } else {
    print("Tanınmayan Kişi");
  }

  String ka = "Admin";
  int s = 123456;

  if (ka == "Admin" && s == 123456) {
    print("Giriş Başarılı. Hoşgeldiniz");
  } else {
    print("Hatalı Giriş");
  }

  int sayi = 10;

  if (sayi == 9 || sayi == 10) {
    print("Sayi 9 veya 10 dur.");
  } else {
    print("Sayi 9 veya 10 değildir.");
  }

  //Kotlin(When)

  int gun = 4;

  switch (gun) {
    case 1:
      print("Pazartesi");
      break;
    case 2:
      print("Salı");
      break;
    case 3:
      print("Çarşamba");
      break;
    case 4:
      print("Perşembe");
      break;
    case 5:
      print("Cuma");
      break;
    case 6:
      print("Cumartesi");
      break;
    case 7:
      print("Pazar");
      break;
    default:
      print("Böyle bir gün yoktur.");
      break;
  }
}
