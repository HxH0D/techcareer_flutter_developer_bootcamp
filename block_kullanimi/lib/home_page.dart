import 'package:block_kullanimi/home_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tfSayi1 = TextEditingController();
  var tfSayi2 = TextEditingController();

  int sonuc = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Block Kullanimi"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<HomePageCubit, int>(// Dinleme veya okuma komudu
                builder: (context, state) {
                  return  Text(
                    state.toString(),
                    style: TextStyle(fontSize: 50),
                  );
                },
              ),
              TextField(
                controller: tfSayi1,
                decoration: const InputDecoration(hintText: "Sayi 1"),
              ),
              TextField(
                controller: tfSayi2,
                decoration: const InputDecoration(hintText: "Sayi 2"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<HomePageCubit>()
                          .topla(tfSayi1.text, tfSayi2.text);
                    },
                    child: const Text("TOPLAMA"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<HomePageCubit>()
                          .carp(tfSayi1.text, tfSayi2.text);
                    },
                    child: const Text("ÇARPMA"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
