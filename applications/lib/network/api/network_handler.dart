import 'package:get/get.dart';

class NetworkHandler {
  static ErrorMessage getMessage(Response response) {
    switch (response.statusCode) {
      case 400:
        return ErrorMessage(title: "[Error] ${response.statusCode}", message: "Bad Request.");
      case 401:
        return ErrorMessage(title: "[Error] ${response.statusCode}", message: "Unauthorized.");
      case 403:
        return ErrorMessage(title: "[Error] ${response.statusCode}", message: "Access Forbidden.");
      case 404:
        return ErrorMessage(title: "[Error] ${response.statusCode}", message: "Request Not Found.");
      case 405:
        return ErrorMessage(
            title: "[Error] ${response.statusCode}", message: "Method Not Allowed.");
      case 406:
        return ErrorMessage(
            title: "[Error] ${response.statusCode}", message: "Content Not Acceptable.");
      case 500:
        return ErrorMessage(
            title: "[Error] ${response.statusCode}",
            message: "Internal Server Error. Please contact admin!");
      case 502:
        return ErrorMessage(title: "[Error] ${response.statusCode}", message: "Bad Gateway.");
      case 503:
        return ErrorMessage(
            title: "[Error] ${response.statusCode}", message: "Service Unavailable.");
      default:
        return ErrorMessage(
            title: "[Error] No Internet Connection",
            message: "Please Check your Connection and Try Again !!");
    }
  }

  static showSnackBar(Response response) {
    Get.snackbar(getMessage(response).title!, getMessage(response).message!);
  }
}

class ErrorMessage {
  String? title;
  String? message;

  ErrorMessage({this.title, this.message});
}
