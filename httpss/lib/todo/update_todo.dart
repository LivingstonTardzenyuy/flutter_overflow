import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../appconstants/appconst.dart';
import '../controller/api.dart';
import '../models/todo.dart';



class UpdateTodo extends StatefulWidget {
  const UpdateTodo({super.key});

  @override
  State<UpdateTodo> createState() => _UpdateTodoState();
}

class _UpdateTodoState extends State<UpdateTodo> {

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
      final Todo todo = Todo(title: title.trim(), description: description.trim());
      context.read<TodoProvider>().addTasks(todo);
      Navigator.pop(context);
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
