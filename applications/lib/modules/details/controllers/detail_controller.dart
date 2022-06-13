import 'package:get/get.dart';
import 'package:sahabat_tani/models/artilce_menu_model.dart';

class DetailController extends GetxController {
  var articleMenu = ArticleMenuModel().obs;

  @override
  void onInit() {
    if (Get.arguments != null) {
      articleMenu.value = Get.arguments['article'] as ArticleMenuModel;
    }
    super.onInit();
  }
}
