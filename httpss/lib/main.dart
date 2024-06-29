import 'package:flutter/material.dart';
import 'package:httpss/controller/api.dart';
import 'package:provider/provider.dart';

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


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<TodoProvider>().fetchTasks();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bamenda'),
        backgroundColor: Colors.yellow,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // color: Colors.blue
        ),
        child: Consumer<TodoProvider>(
          builder: (BuildContext context, TodoProvider todoProvider, Widget? child) {
            if (todoProvider.todos.isEmpty){
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            else {
              return ListView.builder(
                itemCount: todoProvider.todos.length,
                itemBuilder: (context, index){
                  final todo = todoProvider.todos[index];
                  return ListTile(
                    title: Text(
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
        ),
      )
    );
  }
}



class AddTodo extends StatelessWidget {
  const AddTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

      ),
    );
  }
}
