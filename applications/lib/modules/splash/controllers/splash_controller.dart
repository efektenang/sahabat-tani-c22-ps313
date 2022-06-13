import 'package:get/get.dart';
import 'package:sahabat_tani/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAndToNamed(Routes.login);
    });
    super.onInit();
  }
}
