import 'package:flutter/material.dart';
import 'package:httpss/controller/api.dart';
import 'package:provider/provider.dart';

import 'appconstants/appconst.dart';
import 'models/todo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (context) => TodoProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}


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
                    trailing: Text(todo.id.toString()),
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



class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  void _handleSubmit() {
    String title = titleController.text;
    String description = descriptionController.text;
    if (title.isNotEmpty && description.isNotEmpty){
      final Todo todo = Todo(id: null, title: title.trim(), description: description.trim());
      context.read<TodoProvider>().addTasks(todo);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldss(
              textEditingController: titleController,
            ),

            const SizedBox(height: 10,),
            TextFieldss(
              textEditingController: descriptionController,
            ),


            const SizedBox(height: 20,),
            InkWell(
              onTap: () {
                _handleSubmit();
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text(
                      'Add Todo',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20
                    ),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
