import 'package:contacts_app/data/entity/kisiler.dart';
import 'package:contacts_app/ui/cubit/detail_page_cybit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPage extends StatefulWidget {
  Kisiler person;
  DetailPage({super.key,required this.person});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var tfEditPersonName = TextEditingController();
  var tfEditPersonNumber = TextEditingController();

  @override
  initState(){
    super.initState();
    var person = widget.person;
    tfEditPersonName.text = person.kisi_ad;
    tfEditPersonNumber.text = person.kisi_tel;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Person Detail"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0,right: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: tfEditPersonName,
                decoration: const InputDecoration(hintText: "Person Name"),
              ),
              TextField(
                controller: tfEditPersonNumber,
                decoration: const InputDecoration(hintText: "Person Number"),
                keyboardType: TextInputType.number,
              ),
              ElevatedButton(onPressed: () {
                context.read<DetailPageCubit>().update(widget.person.kisi_id,tfEditPersonName.text, tfEditPersonNumber.text);

              }, child: const Text("Update"))
            ],
          ),
        ),
      ),
    );
  }
}
