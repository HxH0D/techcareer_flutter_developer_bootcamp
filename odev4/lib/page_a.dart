import 'package:flutter/material.dart';
import 'page_b.dart';
class PageA extends StatefulWidget {
  const PageA({super.key});

  @override
  State<PageA> createState() => _PageAState();
}

class _PageAState extends State<PageA> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Sayfa A"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Sayfa A",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => PageB(),),);
            }, child: Text("Sayfa B ye git"))
          ],
        ),
      ),
    );
  }
}
