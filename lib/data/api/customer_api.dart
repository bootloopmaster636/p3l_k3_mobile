import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:p3l_k3_mobile/data/api/dio.dart';
import 'package:p3l_k3_mobile/data/model/customer_model.dart';

Future<Customer> getCustomerData(String token) async {
  final Response response;

  try {
    response = await dio.get(
      '/customerLoggedIn',
      options: Options(
        headers: <String, String>{
          'Authorization': 'Bearer $token',
        },
      ),
    );
    return Customer.fromJson(response.data['data'] as Map<String, dynamic>);
  } on DioException catch (e) {
    if (e.response != null) {
      Logger().e(e.response?.data);
    } else {
      Logger().e(e.message);
    }
    rethrow;
  }
}

Future<void> editCustomer(Customer newCustomer, String token) async {
  final Response response;

  try {
    response = await dio.put(
      '/customer/${newCustomer.id}',
      data: newCustomer.toJson(),
      options: Options(
        headers: <String, String>{
          'Authorization': 'Bearer $token',
        },
      ),
    );
  } on DioException catch (e) {
    if (e.response != null) {
      Logger().e(e.response?.data);
    } else {
      Logger().e(e.message);
    }
    rethrow;
  }
}
