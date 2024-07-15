import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:httpss/controller/api.dart';
import 'package:httpss/todo/display_todo.dart';
import 'package:provider/provider.dart';

import 'appconstants/appconst.dart';
import 'controller/notes.dart';
import 'models/todo.dart';
import 'notes.dart';

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
        ChangeNotifierProvider(create: (context) => NotesController()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Sepearation(),
      ),
    );
  }
}


class Sepearation extends StatelessWidget {
  const Sepearation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Row(
        children: [
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
          },
              child: Text('Todos')),

          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => NotesSection()));

          },
              child: Text('Notes')),

        ],
      ),
    );
  }
}

