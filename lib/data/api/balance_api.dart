import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:p3l_k3_mobile/data/api/dio.dart';
import 'package:p3l_k3_mobile/data/model/balance_history_model.dart';

Future<void> withdrawCustomerBalance(int customerId, String token, int amount,
    String bankName, String accountNumber, String detailInformation) async {
  final Response response;

  try {
    response = await dio.post(
      '/withdraw-balance/$customerId',
      data: <String, Object>{
        'amount': amount,
        'bank_name': bankName,
        'account_number': accountNumber,
        'detail_information': detailInformation,
      },
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

Future<List<CustomerBalanceHistory>> fetchWithdrawHistoryFromApi(int customerId, String token) async {
  final Response response;

  try {
    response = await dio.get(
      '/history-withdraw/$customerId',
      options: Options(
        headers: <String, String>{
          'Authorization': 'Bearer $token',
        },
      ),
    );
    return (response.data['data'] as List)
        .map((dynamic item) => CustomerBalanceHistory.fromJson(item as Map<String, dynamic>))
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


