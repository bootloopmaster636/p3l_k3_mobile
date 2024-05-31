import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:p3l_k3_mobile/data/api/dio.dart';
import 'package:p3l_k3_mobile/data/model/transaction_detail_model.dart';
import 'package:p3l_k3_mobile/data/model/transaction_model.dart';

Future<List<Transaction>> getOrderHistory(String token, int customerId) async {
  final Response response;

  try {
    response = await dio.get(
      '/orderHistory/$customerId',
      options: Options(
        headers: <String, String>{
          'Authorization': 'Bearer $token',
        },
      ),
    );
    return (response.data['data'] as List<dynamic>)
        .map((dynamic e) => Transaction.fromJson(e as Map<String, dynamic>))
        .toList();
  } on DioException {
    rethrow;
  }
}

Future<List<TransactionDetail>> getCartContents(String token, int transactionId) async {
  final Response response;

  try {
    response = await dio.get(
      '/detailOrder/$transactionId',
      options: Options(
        headers: <String, String>{
          'Authorization': 'Bearer $token',
        },
      ),
    );

    return (response.data['data']['details'] as List<dynamic>)
        .map((dynamic e) => TransactionDetail.fromJson(e as Map<String, dynamic>))
        .toList();
  } catch (e) {
    rethrow;
  }
}
