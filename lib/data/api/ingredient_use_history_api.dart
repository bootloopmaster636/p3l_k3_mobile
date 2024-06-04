import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:p3l_k3_mobile/data/api/dio.dart';
import 'package:p3l_k3_mobile/data/model/ingredient_use_history_model.dart';

Future<List<IngredientUseHistory>> fetchAllIngredientUsageHistory(String token, DateTime from, DateTime to) async {
  final Response response;

  final data = Map<String, dynamic>.from({
    'from': from.toIso8601String(),
    'to': to.toIso8601String(),
  });

  try {
    Logger().d(data);
    response = await dio.post(
      '/ingredientUsageReport',
      data: data,
      options: Options(
        headers: <String, String>{
          'Authorization': 'Bearer $token',
        },
      ),
    );
    return (response.data['data'] as List<dynamic>)
        .map((dynamic e) => IngredientUseHistory.fromJson(e as Map<String, dynamic>))
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
