class Araba {
  String renk; //kotlin = lateinit.
  int hiz;
  bool calisiyorMu;

  /*Araba(String renk, int hiz, bool calisiyorMu) {
    this.renk = renk; //shadowing I
    this.hiz = hiz;
    this.calisiyorMu = calisiyorMu;
  }*/

  Araba({required this.renk, required this.hiz, required this.calisiyorMu}); // this = araba sınıfı, Swift(self)

  void calistir(){// Side effect : methodun sınıfın özelliğini değiştirmesi.
    hiz = 5;
    calisiyorMu = true;
  }

  void durdur(){
    hiz = 0;
    calisiyorMu = false;
  }

  void hizlan(int km){
    hiz += km;// hiz = hiz + km
  }
  void yavasla(int km){
    hiz-=km;// hiz = hiz - km
  }

  void bilgiAl(){
    print("-------------------------------------");
    print("Renk         : ${renk}");
    print("Hız          : ${hiz}");
    print("Çalışıyor Mu : ${calisiyorMu}");
  }


}
