import 'package:get/get.dart';
import 'package:sahabat_tani/modules/auth/controllers/auth_controller.dart';
import 'package:sahabat_tani/network/api/api_client.dart';
import 'package:sahabat_tani/network/repo/auth_repo.dart';
import 'package:sahabat_tani/utils/const.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiClient(baseURL: Network.baseURL));
    Get.lazyPut(() => AuthRepository(apiClient: Get.find()));
    Get.lazyPut(() => AuthController(authRepository: Get.find()));
  }
}
