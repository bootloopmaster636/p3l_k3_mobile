import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:p3l_k3_mobile/data/api/dio.dart';
import 'package:p3l_k3_mobile/data/model/general_info_model.dart';

Future<List<GeneralInfo>> fetchAllGeneralInfo(String token) async {
  final Response response;

  try {
    response = await dio.get(
      '/generalInfo',
      options: Options(
        headers: <String, String>{
          'Authorization': 'Bearer $token',
        },
      ),
    );
    return (response.data['data'] as List<dynamic>)
        .map((e) => GeneralInfo.fromJson(e as Map<String, dynamic>))
        .toList();
  } on DioException catch (e) {
    if (e.response != null) {
      Logger().e(e.response?.data);
    } else {
      Logger().e(e.message);
    }
    rethrow;
  }
}
