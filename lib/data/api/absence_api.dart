import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:p3l_k3_mobile/data/api/dio.dart';
import 'package:p3l_k3_mobile/data/model/absence_model.dart';

Future<List<Absence>> fetchAllAbsence(String token) async {
  final Response response;

  try {
    response = await dio.get('/absence',
        options: Options(
          headers: <String, String>{
            'Authorization': 'Bearer $token',
          },
        ),);
    return (response.data['data'] as List<dynamic>).map((data) {
      return Absence.fromJson(data as Map<String, dynamic>);
    }).toList();
  } on DioException catch (e) {
    if (e.response != null) {
      Logger().e(e.response?.data);
      Logger().e(e.response?.headers);
      Logger().e(e.response?.requestOptions);
    } else {
      Logger().e(e.requestOptions);
      Logger().e(e.message);
    }
    rethrow;
  }
}

Future<void> createAbsence(
  int employeeId,
  DateTime absenceDate,
  String token,
) async {
  final Response response;

  try {
    final Map<String, Object> absence = <String, Object>{
      'employees_id': employeeId,
      'absence_date': absenceDate.toIso8601String(),
    };

    response = await dio.post(
      '/absence',
      data: absence,
      options: Options(
        headers: <String, String>{
          'Authorization': 'Bearer $token',
        },
      ),
    );
  } on DioException catch (e) {
    if (e.response != null) {
      Logger().e(e.response?.data);
      Logger().e(e.response?.headers);
      Logger().e(e.response?.requestOptions);
    } else {
      Logger().e(e.requestOptions);
      Logger().e(e.message);
    }
    rethrow;
  }
}

Future<void> deleteAbsence(int id, String token) async {
  final Response response;

  try {
    response = await dio.delete(
      '/absence/$id',
      options:
          Options(headers: <String, String>{'Authorization': 'Bearer $token'}),
    );
  } on DioException catch (e) {
    if (e.response != null) {
      Logger().e(e.response?.data);
      Logger().e(e.response?.headers);
      Logger().e(e.response?.requestOptions);
    } else {
      Logger().e(e.requestOptions);
      Logger().e(e.message);
    }
    rethrow;
  }
}
