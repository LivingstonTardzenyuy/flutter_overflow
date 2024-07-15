import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller/controller.dart';

class InstantiateControllers{
  // TapController controller = Get.put(TapController());
  TapController get controller => Get.find<TapController>();

}