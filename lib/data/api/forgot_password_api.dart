import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:p3l_k3_mobile/data/api/dio.dart';

Future<void> VerifyEmail(String email) async {
  final Response response;

  try {
    response = await dio.post(
      '/verifyEmail',
      data: json.encode(<String, String>{'email': email}),
    );
    return;
  } on DioException {
    rethrow;
  }
}

Future<String> VerifyOTP(String otp) async {
  final Response response;

  try {
    response = await dio.post(
      '/verifyCode',
      data: json.encode(<String, String>{'verification_code': otp}),
    );
    return response.data['access_token'] as String;
  } on DioException {
    rethrow;
  }
}

Future<void> EnterNewPassword(String newPassword, String token) async {
  final Response response;

  try {
    response = await dio.post(
      '/changePassword',
      data: json.encode(<String, String>{'password': newPassword}),
      options: Options(
        headers: <String, String>{
          'Authorization': 'Bearer $token',
        },
      ),
    );
    return;
  } on DioException {
    rethrow;
  }
}
