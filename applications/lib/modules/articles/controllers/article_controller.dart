import 'package:get/get.dart';
import 'package:sahabat_tani/models/menu_models.dart';

class ArticleController extends GetxController {
  MenuModels caraMenanam = MenuModels.caraMenanamPadi();
  MenuModels jenisPadi = MenuModels.jenisPadi();
  MenuModels penyakitPadi = MenuModels.penyakitPadi();
  RxInt id = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
