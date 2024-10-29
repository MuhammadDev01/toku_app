import 'package:get/get.dart';
import 'package:toku_app/logic/controllers/toku_controller.dart';

class TokuBinging extends Bindings {
  @override
  void dependencies() {
    Get.put(TokuController());
  }
}
