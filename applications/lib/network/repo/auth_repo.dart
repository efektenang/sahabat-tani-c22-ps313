import 'package:get/get.dart';
import 'package:sahabat_tani/network/api/api_client.dart';
import 'package:sahabat_tani/utils/const.dart';

class AuthRepository {
  final ApiClient apiClient;

  AuthRepository({required this.apiClient});

  Future<Response> login({required Map<String, dynamic> data}) async {
    return await apiClient.postData(Network.apiEndpoint + Network.loginEndpoint, data);
  }

  // Future<bool> saveUserToken(String token) async {
  //   debugPrint("Token $token");
  //   App.tokenUser = token;
  //   apiClient.updateHeader(token, "application/json; charset=utf-8");
  //   debugPrint("Token ${App.tokenUser}");
  //   return await Sessions.setUserToken(token: token);
  // }
  //
  // Future<bool> saveUserData(User userData) async {
  //   return await Sessions.setUserSessions(userData: userData);
  // }

  Future<Response> registerUser({required Map<String, dynamic> data}) async {
    return await apiClient.postData(Network.apiEndpoint + Network.registerEndpoint, data);
  }
}
