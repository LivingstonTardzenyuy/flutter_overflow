
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:httpss/controller/notes.dart';

Future<void> init() async{
  Get.put(NoteController());
}