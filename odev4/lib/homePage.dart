import 'package:flutter/material.dart';
import 'package:odev4/page_a.dart';
import 'package:odev4/page_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Ana Sayfa",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageA(),
                    ));
              },
              child: Text("Sayfa A ya git"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageX(),
                    ));
              },
              child: Text("Sayfa X ya git"),
            ),
          ],
        ),
      ),
    );
  }
}
