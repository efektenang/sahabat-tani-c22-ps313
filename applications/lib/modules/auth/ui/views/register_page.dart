import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sahabat_tani/helpers/custom_date_picker.dart';
import 'package:sahabat_tani/modules/auth/controllers/auth_controller.dart';
import 'package:sahabat_tani/routes/app_pages.dart';
import 'package:sahabat_tani/utils/colors.dart';
import 'package:sahabat_tani/utils/const.dart';
import 'package:sahabat_tani/utils/date_format.dart';
import 'package:sahabat_tani/widgets/custom_button.dart';
import 'package:sahabat_tani/widgets/custom_text_field.dart';

class RegisterPage extends GetView<AuthController> {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: controller.formKey.value,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "BUAT AKUN",
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
                  hintText: "Username",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username harus diisi";
                    } else if (value.length < 5) {
                      return "Username minimal 5 karakter atau lebih";
                    }
                    return null;
                  },
                  onEditingComplete: () {},
                  onSubmitted: (newValue) {},
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomTextField(
                  controller: controller.emailController.value,
                  focusNode: controller.emailFocus.value,
                  textInputAction: TextInputAction.next,
                  inputType: TextInputType.emailAddress,
                  hintText: "Email",
                  onEditingComplete: () {},
                  onSubmitted: (newValue) {},
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email harus diisi";
                    } else if (value.length < 5) {
                      return "Email minimal 5 karakter atau lebih";
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomTextField(
                  controller: controller.addressController.value,
                  focusNode: controller.addressFocus.value,
                  textInputAction: TextInputAction.next,
                  inputType: TextInputType.text,
                  hintText: "Alamat",
                  onEditingComplete: () {},
                  onSubmitted: (newValue) {},
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Alamat harus diisi";
                    }
                    return null;
                  },
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: gender.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return RadioListTile(
                      value: gender[index],
                      groupValue: controller.genderSelected,
                      title: Text(gender[index],
                          style: GoogleFonts.workSans(
                            color: Colors.black,
                            fontSize: 15.0,
                          )),
                      onChanged: (newValue) {});
                },
              ),
              // Visibility(
              //   visible: controller.genderSelected.isEmpty ? true : false,
              //   child: Column(
              //
              // ),),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ListTile(
                  onTap: () async {
                    DateTime? _dateTime = await CustomDatePicker().showCustomDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      minDate: DateTime(1900),
                      maxDate: DateTime.now(),
                    );

                    if (_dateTime != null) {
                      controller.dateBirth.value = _dateTime;
                    }
                  },
                  title: Text(
                    dateFormat(controller.dateBirth.value),
                    style: GoogleFonts.workSans(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 10.0,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    side: const BorderSide(color: borderTextField, width: 1.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomTextField(
                    controller: controller.passwordController.value,
                    focusNode: controller.passwordFocus.value,
                    textInputAction: TextInputAction.next,
                    inputType: TextInputType.visiblePassword,
                    hintText: "Password",
                    onEditingComplete: () {},
                    onSubmitted: (newValue) {},
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password harus diisi";
                      } else if (value.length < 5) {
                        return "Password minimal 5 karakter atau lebih";
                      }
                      return null;
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomTextField(
                    controller: controller.confPasswordController.value,
                    focusNode: controller.confPasswordFocus.value,
                    textInputAction: TextInputAction.done,
                    inputType: TextInputType.visiblePassword,
                    hintText: "Konfirmasi Password",
                    onEditingComplete: () {},
                    onSubmitted: (newValue) {},
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password harus diisi";
                      } else if (value.length < 5) {
                        return "Password minimal 5 karakter atau lebih";
                      } else if (value != controller.passwordController.value.text) {
                        return "Password tidak sesuai";
                      }
                      return null;
                    }),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomButton(
                  onPressed: () {
                    if (!controller.formKey.value.currentState!.validate()) {
                      return;
                    }
                  },
                  label: "DAFTAR",
                  backgroundColor: colorPrimary,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _registerUser() {
    Get.toNamed(Routes.registerSuccess);
  }
}
