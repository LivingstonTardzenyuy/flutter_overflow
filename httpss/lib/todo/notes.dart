import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../add_notes.dart';
import '../controller/notes.dart';

class NotesSection extends StatelessWidget {
  const NotesSection({super.key});

  @override
  Widget build(BuildContext context) {
    NoteController noteController = Get.find();
    noteController.fetchTasks();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: (){
          Get.to(() => AddNotes());
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Notes'),
      ),
      body: Container(
        child: Obx(() {
          if (noteController.notes.isEmpty) {
            return Center(
                child: Text('No notes found!')
            );
          } else {
            return
              ListView.builder(
                itemCount: noteController.notes.length,
                itemBuilder: (BuildContext context, int index) {
                  final note = noteController.notes[index];
                  return ListTile(
                    title: Text(note.title),
                    subtitle: Text(note.description),
                    trailing: Text(note.added_time.timeZoneName),
                  );
                },

              );
          }
        }
        )
      )
    );
  }
}

