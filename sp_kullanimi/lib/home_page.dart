import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int sayac = 0;

  @override
  void initState() {
    super.initState();
    // test();
    sayacKontrol();
  }

  Future<void> sayacKontrol() async {
    var sp = await SharedPreferences.getInstance();
    sayac = sp.getInt("sayac") ?? 0; // Okuma

    setState(() {
      sayac = sayac + 1;
    });

    sp.setInt("sayac", sayac); // Kayıt
  }

  Future<void> test() async {
    // Tanımlama
    var sp = await SharedPreferences.getInstance();

    // Veri Kaydı
    sp.setString("ad", "Ahmet");
    sp.setInt("yas", 23);
    sp.setDouble("boy", 1.78);
    sp.setBool("bekar", true);

    var liste = <String>[];
    liste.add("Ali");
    liste.add("Ece");
    liste.add("Veli");

    sp.setStringList("liste", liste);

    // Veri Silme
    // sp.remove("ad");

    // Veri Okuma
    String gelenAd = sp.getString("ad") ?? "isim yok";
    int gelenYas = sp.getInt("yas") ?? 0;
    double gelenBoy = sp.getDouble("boy") ?? 0.0;
    bool gelenBekar = sp.getBool("bekar") ?? false;
    var gelenListe = sp.getStringList("liste") ?? <String>[];

    print("Gelen ad    : $gelenAd");
    print("Gelen yas   : $gelenYas");
    print("Gelen boy   : $gelenBoy");
    print("Gelen bekar : $gelenBekar");

    if (gelenListe != null) {
      for (var a in gelenListe) {
        print("Gelen liste: $a");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Preferences Kullanimi"),
      ),
      body: Center(
        child: Text(
          "Açılış Sayısı : $sayac",
          style: const TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
