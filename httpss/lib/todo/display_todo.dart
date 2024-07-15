import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/api.dart';
import 'add_todo.dart';




class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void initState() {
    super.initState();
    Provider.of<TodoProvider>(context, listen: false).fetchTasks();
  }
  @override
  Widget build(BuildContext context) {
    // context.read<TodoProvider>().fetchTasks();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bamenda'),
          backgroundColor: Colors.yellow,
        ),
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => AddTodo()));
          },
          child: Icon(Icons.add, color: Colors.white,),
        ),
        body: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Consumer<TodoProvider>(
              builder: (BuildContext context, TodoProvider todoData, Widget? child) {
                if (todoData.todos.isEmpty){
                  return const Center(
                    child: const CircularProgressIndicator(),
                  );
                } else {
                  return ListView.builder(
                    itemCount: todoData.todos.length,
                    itemBuilder: (BuildContext context, int index) {
                      final todo = todoData.todos[index];
                      return ListTile(
                        title:  Text(
                          todo.title,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              log("You want to delete this $todo");
                              context.read<TodoProvider>().deleteTask(todo);
                            },
                            icon: Icon(Icons.delete, color: Colors.red,)),
                        subtitle: Text(todo.description),
                      );
                    },
                  );
                }

              },

            )
        )
    );
  }
}

