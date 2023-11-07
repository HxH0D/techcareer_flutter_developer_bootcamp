import 'package:calisma_yapisi/sonucEkrani.dart';
import 'package:flutter/material.dart';
import 'package:calisma_yapisi/kisiler.dart';

class OyunEkrani extends StatefulWidget {
  Kisiler kisi;
  OyunEkrani({required this.kisi});

  @override
  State<OyunEkrani> createState() => _OyunEkraniState();
}
  //leading - left - start
  //trailing - right - end
class _OyunEkraniState extends State<OyunEkrani> {
  
  Future<bool> geriDonusTusu(BuildContext context) async{
    print("Navigation geri tuşu seçildi");
    return true;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Oyun Ekrani", textAlign: TextAlign.center),
        leading: IconButton(onPressed: (){
          print("App bar geri tuşu seçildi");
        }, icon: Icon(Icons.arrow_back_ios_new),),
      ),
      body: WillPopScope(
        onWillPop: () => geriDonusTusu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${widget.kisi.ad} - ${widget.kisi.yas} - ${widget.kisi.boy} - ${widget.kisi.bekar}"),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SonucEkrani(),
                      ),
                    ); // bu sayfayı arka yığından kapatıp sonuc ekranına gideriz böylece geri suşuna bastığımda ana sayfaya giderim
                  },
                  child: const Text("Bitti"))
            ],
          ),
        ),
      ),
    );
  }
}
