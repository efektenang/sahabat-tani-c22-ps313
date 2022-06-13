import 'package:get/get.dart';
import 'package:sahabat_tani/modules/details/controllers/detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailController());
  }
}
