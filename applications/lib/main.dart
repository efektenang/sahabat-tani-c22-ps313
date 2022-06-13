import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sahabat_tani/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sahabat Tani',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      initialRoute: Routes.splash,
      getPages: AppPages.routes,
    );
  }
}
