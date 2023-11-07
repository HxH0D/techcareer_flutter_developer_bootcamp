import 'package:calisma_yapisi/anaSayfa.dart';
import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget {
  const SonucEkrani({super.key});

  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sonuc Ekrani", textAlign: TextAlign.center),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);// Geldiğimiz bir önceki sayfaya döneriz.
              },
              child: const Text("Geri Dön"),
            ),
            ElevatedButton(
              onPressed: () {
               Navigator.of(context).popUntil((route) => route.isFirst); // tüm sayfaları kapatıp ilk ana sayfaya gideriz .
              },
              child: const Text("Ana SAyfaya Geri Dön"),
            ),
          ],
        ),
      ),
    );
  }
}
