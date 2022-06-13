import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sahabat_tani/models/base_response_model.dart';
import 'package:sahabat_tani/network/api/network_handler.dart';
import 'package:sahabat_tani/network/repo/auth_repo.dart';
import 'package:sahabat_tani/utils/const.dart';
import 'package:sahabat_tani/utils/date_format.dart';

class AuthController extends GetxController {
  final AuthRepository authRepository;

  AuthController({required this.authRepository});

  var formKey = GlobalKey<FormState>().obs;
  var userNameController = TextEditingController().obs;
  var passwordController = TextEditingController().obs;
  var confPasswordController = TextEditingController().obs;
  var emailController = TextEditingController().obs;
  var addressController = TextEditingController().obs;

  var userNameFocus = FocusNode().obs;
  var passwordFocus = FocusNode().obs;
  var confPasswordFocus = FocusNode().obs;
  var emailFocus = FocusNode().obs;
  var addressFocus = FocusNode().obs;

  var isLoading = false.obs;
  // var isSelectedGender = false.obs;
  // var isDateBirthChange = false.obs;
  var genderSelected = gender[0].obs;
  var dateBirth = DateTime.now().obs;

  Future<BaseResponseModel> registerUser() async {
    Map<String, dynamic> data = {
      'username': userNameController.value.text,
      'useremail': emailController.value.text,
      'userpassword': passwordController.value.text,
      'alamat': addressController.value.text,
      'jk': genderSelected.value,
      'tlhr': dateFormatToServer(dateBirth.value),
    };

    isLoading.toggle();
    Response response = await authRepository.registerUser(data: data);
    if (response.statusCode == 200) {
      isLoading.toggle();
      return BaseResponseModel(
          statusCode: response.statusCode,
          statusMessage: response.statusText,
          data: null,
          isSuccess: true);
    } else {
      isLoading.toggle();
      return BaseResponseModel(
          statusCode: response.statusCode,
          statusMessage: NetworkHandler.getMessage(response).message,
          data: null,
          isSuccess: false);
    }
  }
}
