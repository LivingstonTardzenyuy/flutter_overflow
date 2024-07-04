import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  void _showBottomSheet() {
    Get.bottomSheet(
      Container(
        color: Colors.white,
        child: Wrap(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.music_note),
              title: Text('Music'),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.videocam),
              title: Text('Video'),
              onTap: () => {},
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      isDismissible: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      enableDrag: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Hello'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _showBottomSheet,
          child: Text('Show Bottom Sheet'),
        ),
      ),
    );
  }
}
