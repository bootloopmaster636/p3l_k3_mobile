import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:p3l_k3_mobile/data/api/dio.dart';
import 'package:p3l_k3_mobile/data/model/auth_model.dart';

Future<Auth> loginApi(String email, String password) async {
  final Response response;

  final Object credential = <String, String>{
    'email': email,
    'password': password,
  };

  try {
    response = await dio.post('/login', data: credential);
    return Auth.fromJson(response.data as Map<String, dynamic>);
  } on DioException catch (e) {
    Logger().e(e.response?.data);
    rethrow;
  }
}
