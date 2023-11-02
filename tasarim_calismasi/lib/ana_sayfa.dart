import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pizza",
          style: TextStyle(
            color: yaziRenk1,
            fontFamily: "Pacifico",
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: anaRenk,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Beef Cheese",
            style: TextStyle(
              fontSize: 36,
              color: anaRenk,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset("resimler/pizza-resim.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: anaRenk,
                ),
                onPressed: () {},
                child: Text(
                  "Cheese",
                  style: TextStyle(
                    color: yaziRenk1,
                    fontSize: 20,
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: anaRenk,
                ),
                onPressed: () {},
                child: Text(
                  "Sausage",
                  style: TextStyle(
                    color: yaziRenk1,
                    fontSize: 20,
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: anaRenk,
                ),
                onPressed: () {},
                child: Text(
                  "Olive",
                  style: TextStyle(
                    color: yaziRenk1,
                    fontSize: 20,
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: anaRenk,
                ),
                onPressed: () {},
                child: Text(
                  "Pepper",
                  style: TextStyle(
                    color: yaziRenk1,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "20 Min",
                style: TextStyle(
                  fontSize: 22,
                  color: yaziRenk2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Delivery",
                style: TextStyle(
                  fontSize: 22,
                  color: anaRenk,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Text(
                  "Meat lover, get ready to meet your pizza !",
                  style: TextStyle(
                    fontSize: 22,
                    color: yaziRenk2,

                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
