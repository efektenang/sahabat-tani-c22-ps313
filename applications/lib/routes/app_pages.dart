import 'package:get/get.dart';
import 'package:sahabat_tani/modules/articles/bindings/article_binding.dart';
import 'package:sahabat_tani/modules/articles/ui/views/article_page.dart';
import 'package:sahabat_tani/modules/auth/bindings/auth_binding.dart';
import 'package:sahabat_tani/modules/auth/ui/views/login_page.dart';
import 'package:sahabat_tani/modules/auth/ui/views/register_page.dart';
import 'package:sahabat_tani/modules/auth/ui/views/register_success.dart';
import 'package:sahabat_tani/modules/details/bindings/detail_binding.dart';
import 'package:sahabat_tani/modules/details/ui/views/detail_page.dart';
import 'package:sahabat_tani/modules/home/bindings/home_binding.dart';
import 'package:sahabat_tani/modules/home/ui/views/home_page.dart';
import 'package:sahabat_tani/modules/splash/bindings/splash_binding.dart';
import 'package:sahabat_tani/modules/splash/ui/views/splash_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.register,
      page: () => const RegisterPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.registerSuccess,
      page: () => const RegisterSuccess(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.detail,
      page: () => const DetailPage(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.article,
      page: () => const ArticlePage(),
      binding: ArticleBinding(),
    ),
  ];
}
