import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sahabat_tani/modules/auth/controllers/auth_controller.dart';
import 'package:sahabat_tani/routes/app_pages.dart';
import 'package:sahabat_tani/utils/const.dart';
import 'package:sahabat_tani/widgets/custom_button.dart';

class RegisterSuccess extends GetView<AuthController> {
  const RegisterSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Pendaftaran Success",
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    AppImages.registerSuccess,
                    height: 200,
                    width: 200,
                    color: Colors.white.withOpacity(0.8),
                    colorBlendMode: BlendMode.modulate,
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: CustomButton(
              label: "Kembali",
              labelStyle: GoogleFonts.workSans(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 20,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              backgroundColor: const Color(0xff4BC3D3).withOpacity(0.2),
              onPressed: () {
                Get.offNamedUntil(Routes.login, (route) => false);
              },
            ),
          ),
        ],
      ),
    );
  }
}
