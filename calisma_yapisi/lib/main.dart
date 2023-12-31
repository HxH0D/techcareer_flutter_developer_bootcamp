import 'package:calisma_yapisi/anaSayfa.dart';
import 'package:calisma_yapisi/bottom_navigation_ornek/bottom_sayfa.dart';
import 'package:calisma_yapisi/kullanici_etkilesimi/kullanici_etkilesimi_sayfa.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const KullaniciEtkilesimiSayfa(),//const BottomSayfa(), //const AnaSayfa(),
    );
  }
}


