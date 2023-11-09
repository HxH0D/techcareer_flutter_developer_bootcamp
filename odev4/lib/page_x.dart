import 'package:flutter/material.dart';
import 'package:odev4/page_y.dart';

class PageX extends StatefulWidget {
  const PageX({super.key});

  @override
  State<PageX> createState() => _PageXState();
}

class _PageXState extends State<PageX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Sayfa X"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Sayfa X",
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
              child: Text("Sayfa Y ye git"),
            ),
          ],
        ),
      ),
    );
  }
}
