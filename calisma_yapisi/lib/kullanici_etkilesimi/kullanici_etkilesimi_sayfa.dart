import 'package:flutter/material.dart';

class KullaniciEtkilesimiSayfa extends StatefulWidget {
  const KullaniciEtkilesimiSayfa({super.key});

  @override
  State<KullaniciEtkilesimiSayfa> createState() =>
      _KullaniciEtkilesimiSayfaState();
}

class _KullaniciEtkilesimiSayfaState extends State<KullaniciEtkilesimiSayfa> {
  var textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Kullanici Etkilesimi",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Silmek İstiyor musunuz?"),
                    action: SnackBarAction(
                      label: "Evet",
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Silindi"),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
              child: Text("Snackbar"),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "Silmek İstiyor musunuz?",
                      style: TextStyle(color: Colors.indigoAccent),
                    ),
                    backgroundColor: Colors.white,
                    action: SnackBarAction(
                      label: "Evet",
                      textColor: Colors.red,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "Silindi",
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
              child: Text("Snackbar (Özel)"),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Başlık"),
                      content: const Text("İçerik"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("İptal"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Tamam"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Alert"),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Kayıt İşlemi"),
                      content: TextField(
                        controller: textFieldController,
                        decoration: const InputDecoration(hintText: "Veri"),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("İptal"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            String alinanVeri = textFieldController.text;
                            textFieldController.text = "";
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  alinanVeri,
                                ),
                              ),
                            );
                          },
                          child: Text("Kaydet"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("Alert (Özel)"),
            ),
          ],
        ),
      ),
    );
  }
}
