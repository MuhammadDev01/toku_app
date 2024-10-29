import 'package:get/get.dart';
import 'package:toku_app/utils/app_theme.dart';

class TokuController extends GetxController {
  RxBool isDark = false.obs;
  changeTheme() {
    isDark.value = !isDark.value;
    Get.changeTheme(isDark.value ? AppTheme.darkTheme : AppTheme.defaultTheme);
  }
}
