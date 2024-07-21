import 'package:flutter/material.dart';

import 'appconstants/appconst.dart';

class AddNotes extends StatelessWidget {
  const AddNotes({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController descriptionController = TextEditingController();
    TextEditingController titleDescriptionController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Add notes'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.orange,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10,),
                TextFieldss(
                  textEditingController: titleDescriptionController,
                ),
                const SizedBox(height: 10,),
                TextFieldss(
                  textEditingController: descriptionController,
                ),

                const SizedBox(height: 10,),
                InkWell(
                  onTap: () {
                    // _handleSubmit();
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue,
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
            )
          ),
        ),
      ),
    );
  }
}
