import 'package:flutter/material.dart';
class PageY extends StatefulWidget {
  const PageY({super.key});

  @override
  State<PageY> createState() => _PageYState();
}

class _PageYState extends State<PageY> {
  Future<bool> geriDonusTusu(BuildContext context) async{
    Navigator.of(context).popUntil((route) => route.isFirst);
    return true;
  }
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Sayfa Y"),
      ),
      body:WillPopScope(
        onWillPop: () => geriDonusTusu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Sayfa Y",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
