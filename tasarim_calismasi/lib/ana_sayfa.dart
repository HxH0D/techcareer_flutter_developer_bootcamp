import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    var d = AppLocalizations.of(context)!;

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran Yuksekliği: $ekranYuksekligi,");
    print("Ekran Genisliği: $ekranGenisligi");

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pizza",
          style: TextStyle(
            color: yaziRenk1,
            fontFamily: "Pacifico",
            fontSize: ekranGenisligi/12,
          ),
        ),
        centerTitle: true,
        backgroundColor: anaRenk,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            d.pizzaBaslik,
            style: TextStyle(
              fontSize: ekranGenisligi/10,
              color: anaRenk,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset("resimler/pizza-resim.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Chip(icerik: d.peynirYazi),
              Chip(icerik: d.sucukYazi),
              Chip(icerik: d.zeytinYazi),
              Chip(icerik: d.biberYazi),
            ],
          ),
          Column(
            children: [
              Text(
                d.teslimatSure,
                style: TextStyle(
                  fontSize: 22,
                  color: yaziRenk2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                d.teslimatBaslik,
                style: TextStyle(
                  fontSize: 22,
                  color: anaRenk,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Text(
                  d.pizzaAciklama,
                  style: TextStyle(
                    fontSize: 22,
                    color: yaziRenk2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  d.fiyatYazi,
                  style: TextStyle(
                    fontSize: 44,
                    color: anaRenk,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: ekranGenisligi/2,
                  height: 50,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: anaRenk,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      d.buttonYazi,
                      style: TextStyle(
                        color: yaziRenk1,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget {
  String icerik;

  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: anaRenk,
      ),
      onPressed: () {},
      child: Text(
        icerik,
        style: TextStyle(
          color: yaziRenk1,
          fontSize: 20,
        ),
      ),
    );

  }
}
