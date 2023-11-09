import 'package:flutter/material.dart';
import 'package:odev4/page_y.dart';

class PageB extends StatefulWidget {
  const PageB({super.key});

  @override
  State<PageB> createState() => _PageBState();
}

class _PageBState extends State<PageB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(
          "Sayfa B",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Sayfa B",
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
                      builder: (context) => PageY(),
                    ),
                  );
                },
                child: Text("Sayfa Y ye git"))
          ],
        ),
      ),
    );
  }
}
