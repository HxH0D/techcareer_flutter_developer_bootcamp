import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String alinanVeri = "";
  String imageName = "baklava.png";
  bool swichController = false;
  bool checkboxController = false;
  int radioValue = 0;
  bool progressControl = false;
  TextEditingController tfController = TextEditingController();
  double ilerleme = 30.0;

  var tfSaat = TextEditingController();
  var tfTarih = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widgets Kullanımı"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(alinanVeri),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: TextField(
                controller: tfController,
                decoration: const InputDecoration(
                  hintText: "Veri",
                ),
                keyboardType: TextInputType.number,
                obscureText: true,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                alinanVeri = tfController.text;
                tfController.text = "";
                setState(() {});
              },
              child: Text("Oku"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    imageName = "kofte.png";
                    setState(() {});
                  },
                  child: Text("Resim 1"),
                ),
                //Image.asset("images/$imageName"),
                SizedBox(
                  width: 72,
                  height: 72,
                  child: Image.network(
                      "http://kasimadalan.pe.hu/yemekler/resimler/$imageName"),
                ),
                ElevatedButton(
                  onPressed: () {
                    imageName = "ayran.png";
                    setState(() {});
                  },
                  child: Text("Resim 2"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 200,
                  child: SwitchListTile(
                    title: const Text("Dart"),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: swichController,
                    onChanged: (value) {
                      swichController = value;
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: CheckboxListTile(
                    title: const Text("Flutter"),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: checkboxController,
                    onChanged: (value) {
                      checkboxController = value!;
                      setState(() {});
                    },
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 200,
                  child: RadioListTile(
                    title: const Text("Barcelona"),
                    value: 1,
                    groupValue: radioValue,
                    onChanged: (value) {
                      radioValue = value!;
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: RadioListTile(
                    title: const Text("Real Madrid"),
                    value: 2,
                    groupValue: radioValue,
                    onChanged: (value) {
                      radioValue = value!;
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    progressControl = true;
                    setState(() {});
                  },
                  child: const Text("Başla"),
                ),
                Visibility(
                  visible: progressControl,
                  child: const CircularProgressIndicator(),
                ),
                ElevatedButton(
                  onPressed: () {
                    progressControl = false;
                    setState(() {});
                  },
                  child: const Text("Dur"),
                ),
              ],
            ),
            Text(ilerleme.toString()),
            Slider(
              max: 100.0,
              min: 0.0,
              value: ilerleme,
              onChanged: (value) {
                ilerleme = value;
                setState(() {});
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 128,
                  child: TextField(
                    controller: tfSaat,
                    decoration: const InputDecoration(hintText: "Saat"),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.access_time),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                print("Swich durum: $swichController");
                print("Checkbox durum: $checkboxController");
                print("Radio değer: $radioValue");
                print("Slider ilerleme: $ilerleme");
              },
              child: const Text("Göster"),
            ),
          ],
        ),
      ),
    );
  }
}
