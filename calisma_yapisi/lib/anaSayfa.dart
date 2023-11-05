import 'package:calisma_yapisi/oyunEkrani.dart';
import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int sayac = 0;

  @override
  Widget build(BuildContext context) {
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
                    builder: (context) => const OyunEkrani(),
                  ),
                );
              },
              child: const Text("Başla"),
            ),
          ],
        ),
      ),
    );
  }
}
