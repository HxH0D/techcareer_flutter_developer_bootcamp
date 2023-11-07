import 'package:calisma_yapisi/kisiler.dart';
import 'package:calisma_yapisi/oyunEkrani.dart';
import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int sayac = 0;
  bool control = false;

  @override
  void initState() {
    // TODO: implement initState
    print("initState çalıştı");
    //Uygulama açıldığında bir defa çalışır
  }

  Future<int> toplama(int sayi1, int sayi2)async{
    int toplam = sayi1 + sayi2;
    return toplam;
  }

  @override
  Widget build(BuildContext context) {
    print("build çalıştı"); //Tekrarlı çalışır, her setState metodu çalıştığında
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ana Sayfa", textAlign: TextAlign.center),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sonuc: $sayac"),
            ElevatedButton(
              onPressed: () {
                sayac++;
                setState(() {});
              },
              child: const Text("Tıkla"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        OyunEkrani(
                          kisi: Kisiler(
                            ad: "Emre",
                            yas: 20,
                            boy: 1.72,
                            bekar: true,
                          ),
                        ),
                  ),
                ).then((value) => {print("ana sayfaya dönüldü")});
              },
              child: const Text("Başla"),
            ),
            Visibility(
              visible: control,
              child: Text("Merhaba"),
            ),
            Text(
              control ? "Merhaba" : "Güle Güle",
              style: TextStyle(
                color: control ? Colors.red : Colors.blue,
              ),
            ),
            (() {
              if (control) {
                return Text("Merhaba", style: TextStyle(
                  color: control ? Colors.red : Colors.blue,
                ),);
              }
              else {
                return Text("Bay Bay", style: TextStyle(
                  color: control ? Colors.red : Colors.blue,
                ),);
              }
            }()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    control = true;
                    setState(() {});
                  },
                  child: const Text("Durum1(true)"),
                ),
                ElevatedButton(
                  onPressed: () {
                    control = false;
                    setState(() {});
                  },
                  child: const Text("Durum(False)"),
                ),
              ],
            ),
            FutureBuilder<int>(
              future: toplama(10,20),
              builder: (context, snapshot) {
                if(snapshot.hasError){
                  return Text("Hata Oluştu");
                }if(snapshot.hasData){
                  return Text("Sonuç: ${snapshot.data.toString()}");
                }else{
                  return const Text("Sonuç Yok");
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
