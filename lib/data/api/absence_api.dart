import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:p3l_k3_mobile/data/api/dio.dart';
import 'package:p3l_k3_mobile/data/model/absence_model.dart';

Future<List<Absence>> fetchAllAbsence() async {
  final Response response;

  try {
    response = await dio.get('/absence');
    return (response.data as List<Map<String, dynamic>>)
        .map((Map<String, dynamic> data) {
      return Absence.fromJson(data);
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

Future<void> createAbsence(Absence absence) async {
  final Response response;

  try {
    response = await dio.post('/absence', data: absence.toJson());
    Logger().i(response.data);
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

Future<void> deleteAbsence(int id) async {
  final Response response;

  try {
    response = await dio.delete('/absence/$id');
    Logger().i(response.data);
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
