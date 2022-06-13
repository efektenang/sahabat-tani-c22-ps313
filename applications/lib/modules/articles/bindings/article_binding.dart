import 'package:get/get.dart';
import 'package:sahabat_tani/modules/articles/controllers/article_controller.dart';

class ArticleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ArticleController());
  }
}
