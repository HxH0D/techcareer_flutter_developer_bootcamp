import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/data/entity/todo.dart';
import 'package:todo_app/ui/cubit/home_page_cubit.dart';
import 'package:todo_app/ui/views/detail_page.dart';
import 'package:todo_app/ui/views/register_page.dart';

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
    context.read<HomePageCubit>().todoUpload();
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
            : Text("Todo App"),
        backgroundColor: isThereSearch ? Colors.white : Colors.blue,
        actions: [
          isThereSearch
              ? IconButton(
                  onPressed: () {
                    isThereSearch = false;
                    context.read<HomePageCubit>().todoUpload();
                    setState(() {});
                  },
                  icon: Icon(Icons.close),
                )
              : IconButton(
                  onPressed: () {
                    isThereSearch = true;
                    setState(() {});
                  },
                  icon: Icon(Icons.search),
                ),
        ],
      ),
      body: BlocBuilder<HomePageCubit, List<Todo>>(
        builder: (context, todolist) {
          if (todolist.isNotEmpty) {
            return ListView.builder(
              itemCount: todolist.length,
              itemBuilder: (context, index) {
                var todo = todolist[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(data: todo),
                      ),
                    ).then((value) {
                      context.read<HomePageCubit>().todoUpload();

                    });
                  },
                  child: Card(
                    color: Colors.blueAccent,
                    child: SizedBox(
                      height: 100,
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(todo.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              Text(todo.description, style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("${todo.title} Should it be deleted?"),
                                    action: SnackBarAction(
                                      label: "Yes",
                                      onPressed: () {
                                        context.read<HomePageCubit>().delete(todo.id);
                                      },
                                    ),
                                  ),
                                );
                              },
                              icon: const Icon(Icons.delete))
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
                builder: (context) => RegisterPage(),
              )).then((value){
                context.read<HomePageCubit>().todoUpload();
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
