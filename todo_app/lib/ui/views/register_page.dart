import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/ui/cubit/register_page_cubit.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var tfTitle = TextEditingController();
  var tfDescription = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Görev Ekle"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: tfTitle,
              decoration: InputDecoration(
                hintText: "Title",
              ),
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              controller: tfDescription,
              decoration: InputDecoration(
                hintText: "Description",
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                context.read<RegisterPageCubit>().save(tfTitle.text, tfDescription.text);
                Navigator.pop(context);
              },
              child: Text("Add"),
            ),
          ],
        ),
      ),
    );
  }
}
