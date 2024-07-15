import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/notes.dart';

class NotesSection extends StatelessWidget {
  const NotesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
      ),
      body: Consumer<NotesController>(
        builder: (BuildContext context, NotesController noteController, Widget? child) {
          if (noteController.notes.isEmpty){
            return const Center(
              child: const CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: noteController.notes.length,
              itemBuilder: (BuildContext context, int index) {
                // var note =
                return ListTile(
                  title: Text('title'),
                  trailing: Text('description'),
                  subtitle: Text('date created'),
                );
              },
            );
          }

        },
      ),
    );
  }
}
