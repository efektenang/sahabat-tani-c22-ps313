import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sahabat_tani/network/api/network_handler.dart';

class ApiClient extends GetConnect implements GetxService {
  final String baseURL;
  Map<String, String>? _headers = {};

  ApiClient({required this.baseURL}) {
    // httpClient.baseUrl = baseURL;

    baseUrl = baseURL;
    _headers = {
      'Content-Type': httpClient.defaultContentType,
    };
  }

  void updateHeader(String token, String contentType) {
    _headers = {'Content-Type': contentType, 'Authorization': "Bearer $token"};
  }

  Future<Response> getData(String url,
      {Map<String, dynamic>? query, String contentType = ""}) async {
    debugPrint(_headers.toString());
    Response response = await get(url, headers: _headers, query: query);

    debugPrint(response.request!.url.toString());
    try {
      response = handleResponse(response);
      return response;
    } catch (e) {
      return Response(
          statusCode: response.statusCode, body: response.body, statusText: response.statusText);
    }
  }

  Future<Response> postData(String url, Map<String, dynamic> data,
      {Map<String, dynamic>? query,
      String contentType = "",
      Function(double)? uploadProgress}) async {
    dynamic _data;
    if (contentType == 'multipart/form-data') {
      _data = FormData(data);
    } else {
      _data = json.encode(data);
    }
    Response response = await post(url, _data,
        headers: _headers,
        query: query,
        contentType: contentType.isNotEmpty ? contentType : httpClient.defaultContentType);

    debugPrint(response.bodyString);
    try {
      response = handleResponse(response);
      return response;
    } catch (e) {
      return Response(
          statusCode: response.statusCode, body: response.body, statusText: response.statusText);
    }
  }

  Future<Response> putData(String url, Map<String, dynamic> data,
      {Map<String, dynamic>? query,
      String contentType = "",
      Function(double)? uploadProgress}) async {
    Response response =
        await put(url, data, headers: _headers, query: query, contentType: contentType);

    try {
      debugPrint(response.bodyString);
      response = handleResponse(response);
      return response;
    } catch (e) {
      return Response(
          statusCode: response.statusCode, body: response.body, statusText: response.statusText);
    }
  }

  Future<Response> deleteData(String url,
      {Map<String, dynamic>? query, String contentType = ""}) async {
    Response response =
        await delete(url, headers: _headers, query: query, contentType: contentType);

    try {} catch (e) {
      return Response(
          statusCode: response.statusCode, body: response.body, statusText: response.statusText);
    }

    return response;
  }

  Response handleResponse(Response response) {
    Response _response = response;
    if (response.hasError && response.body != null) {
      // ErrorResponse _errorResponse = ErrorResponse.fromJson(_response.body);
      // _response = Response(statusCode: _response.statusCode, body: _response.body, statusText: _errorResponse.errors[0].message);
      _response = Response(
          statusCode: response.statusCode,
          body: response.body,
          statusText: response.body['message']);
    } else if (response.hasError && response.body == null) {
      _response = Response(
          statusCode: response.statusCode, statusText: NetworkHandler.getMessage(response).message);
    }

    return _response;
  }
}
