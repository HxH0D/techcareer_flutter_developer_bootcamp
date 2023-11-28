import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/data/entity/todo.dart';
import 'package:todo_app/ui/cubit/detail_page_cubit.dart';
class DetailPage extends StatefulWidget {
  Todo data ;
  DetailPage({super.key, required this.data});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  var tfTitle = TextEditingController();
  var tfDescription = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tfTitle.text = widget.data.title;
    tfDescription.text = widget.data.description;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Task"),
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
                context.read<DetailPageCubit>().update(widget.data.id, tfTitle.text, tfDescription.text);
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
