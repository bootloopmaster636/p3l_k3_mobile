import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:p3l_k3_mobile/data/api/dio.dart';
import 'package:p3l_k3_mobile/data/model/product_model.dart';

Future<List<Product>> getProducts(String token) async {
  final Response response;

  try {
    response = await dio.get(
      '/product',
      options: Options(
        headers: <String, String>{
          'Authorization': 'Bearer $token',
        },
      ),
    );
    return (response.data['data'] as List<dynamic>)
        .map((dynamic e) => Product.fromJson(e as Map<String, dynamic>))
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
