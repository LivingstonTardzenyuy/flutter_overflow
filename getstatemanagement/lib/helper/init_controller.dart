import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/controller.dart';
import '../controller/list_controllers.dart';

Future<void> init() async {
  Get.put(ListController());
  Get.put(TapController());

}