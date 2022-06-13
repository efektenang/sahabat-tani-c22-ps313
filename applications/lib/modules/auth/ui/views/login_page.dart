import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sahabat_tani/modules/auth/controllers/auth_controller.dart';
import 'package:sahabat_tani/routes/app_pages.dart';
import 'package:sahabat_tani/utils/colors.dart';
import 'package:sahabat_tani/widgets/custom_button.dart';
import 'package:sahabat_tani/widgets/custom_text_field.dart';

class LoginPage extends GetView<AuthController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "SAHABAT TANI",
            style: GoogleFonts.inter(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomTextField(
              controller: controller.userNameController.value,
              focusNode: controller.userNameFocus.value,
              textInputAction: TextInputAction.next,
              inputType: TextInputType.text,
              hintText: "Masukkan username",
              onEditingComplete: () {},
              onSubmitted: (newValue) {},
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomTextField(
              controller: controller.passwordController.value,
              focusNode: controller.passwordFocus.value,
              textInputAction: TextInputAction.done,
              inputType: TextInputType.text,
              hintText: "Masukkan password",
              onEditingComplete: () {},
              onSubmitted: (newValue) {},
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomButton(
              onPressed: () {
                Get.toNamed(Routes.home);
              },
              label: "LOGIN",
              backgroundColor: colorPrimary,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Anda belum mempunyai akun? Silahkan Daftar Di Bawah Sini",
            style: GoogleFonts.workSans(
              color: Colors.black,
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: CustomButton(
              onPressed: () {
                Get.toNamed(Routes.register);
              },
              label: "DAFTAR ",
              backgroundColor: colorPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
