import 'package:contacts_app/data/repo/kisiler_dao_repository.dart';
import 'package:contacts_app/ui/cubit/register_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var tfPersonName = TextEditingController();
  var tfPersonNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Person Registration"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: tfPersonName,
                decoration: const InputDecoration(hintText: "Person Name"),
              ),
              TextField(
                controller: tfPersonNumber,
                decoration: const InputDecoration(hintText: "Person Number"),
                keyboardType: TextInputType.number,
              ),
              ElevatedButton(
                  onPressed: () {
                    context
                        .read<RegisterPageCubit>()
                        .save(tfPersonName.text, tfPersonNumber.text);
                  },
                  child: const Text("Save"))
            ],
          ),
        ),
      ),
    );
  }
}
