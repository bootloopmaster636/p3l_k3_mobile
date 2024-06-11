import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:p3l_k3_mobile/data/api/dio.dart';
import 'package:p3l_k3_mobile/data/model/ingredient_model.dart';

Future<List<Ingredient>> fetchAllIngredient(String token) async {
  final Response response;

  try {
    response = await dio.get(
      '/ingredient',
      options: Options(
        headers: <String, String>{
          'Authorization': 'Bearer $token',
        },
      ),
    );
    final List<dynamic> allIngredientRaw =
        (response.data['data'] as List<dynamic>);

    final List<Ingredient> allIngredient = allIngredientRaw
        .map((dynamic e) => Ingredient.fromJson(e as Map<String, dynamic>))
        .toList();

    return allIngredient;
  } on DioException catch (e) {
    if (e.response != null) {
      Logger().e(e.response?.data);
    } else {
      Logger().e(e.message);
    }
    rethrow;
  }
}
