import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../controller/list_controllers.dart';



// ALWAYS remember to pass the `Type` you used to register your controller!
class AwesomeView extends GetView<ListController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Text(controller.title), // just call `controller.something`
        ),
      ),
    );
  }
}