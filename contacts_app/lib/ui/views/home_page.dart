import 'package:contacts_app/data/entity/kisiler.dart';
import 'package:contacts_app/ui/cubit/home_page_cubit.dart';
import 'package:contacts_app/ui/views/detail_page.dart';
import 'package:contacts_app/ui/views/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isThereSearch = false;

  @override
  void initState() {
    super.initState();
    context.read<HomePageCubit>().personUpload();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isThereSearch
            ? TextField(
                decoration: const InputDecoration(hintText: "Search"),
                onChanged: (searchWord) {
                  context.read<HomePageCubit>().search(searchWord);
                },
              )
            : const Text("Persons"),
        actions: [
          isThereSearch
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isThereSearch = false;
                      context.read<HomePageCubit>().personUpload();
                    });
                  },
                  icon: const Icon(Icons.clear),
                )
              : IconButton(
                  onPressed: () {
                    setState(() {
                      isThereSearch = true;
                    });
                  },
                  icon: const Icon(Icons.search),
                ),
        ],
      ),
      body: BlocBuilder<HomePageCubit, List<Kisiler>>(
        builder: (context, personsList) {
          if (personsList.isNotEmpty) {
            return ListView.builder(
              itemCount: personsList.length,
              itemBuilder: (context, index) {
                var person = personsList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(person: person),
                      ),
                    ).then(
                      (value) {
                        context.read<HomePageCubit>().personUpload();
                      },
                    );
                  },
                  child: Card(
                    child: SizedBox(
                      height: 100,
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(person.kisi_ad),
                              Text(person.kisi_tel)
                            ],
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content:
                                        Text("${person.kisi_ad} Silinsin mi ?"),
                                    action: SnackBarAction(
                                      label: "Yes",
                                      onPressed: () {
                                        context
                                            .read<HomePageCubit>()
                                            .delete(person.kisi_id);
                                      },
                                    ),
                                  ),
                                );
                              },
                              icon: const Icon(Icons.clear))
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const RegisterPage(),
            ),
          ).then(
            (value) {
              context.read<HomePageCubit>().personUpload();
            },
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
