import 'package:calisma_yapisi/bottom_navigation_ornek/sayfa_bir.dart';
import 'package:calisma_yapisi/bottom_navigation_ornek/sayfa_iki.dart';
import 'package:calisma_yapisi/bottom_navigation_ornek/sayfa_uc.dart';
import 'package:flutter/material.dart';
class BottomSayfa extends StatefulWidget {
  const BottomSayfa({super.key});

  @override
  State<BottomSayfa> createState() => _BottomSayfaState();
}

class _BottomSayfaState extends State<BottomSayfa> {
  int secilenIndex = 0;
  var sayfalar = [const SayfaBir(), const SayfaIki(), const SayfaUc(),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation"),
        backgroundColor: Colors.purple,

      ),
      body: sayfalar[secilenIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
       selectedItemColor: Colors.orange,
       unselectedItemColor: Colors.white,
       items: const [
         BottomNavigationBarItem(icon: Icon(Icons.looks_one_outlined),label: "Bir",),
         BottomNavigationBarItem(icon: Icon(Icons.looks_two_outlined),label: "İki",),
         BottomNavigationBarItem(icon: Icon(Icons.looks_3_outlined), label: "Üç"),

       ],

        currentIndex: secilenIndex,
        onTap: (value) {
          secilenIndex = value;
          setState(() {

          });
        },
      ),
    );
  }
}
