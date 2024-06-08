import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:p3l_k3_mobile/data/api/dio.dart';
import 'package:p3l_k3_mobile/data/model/customer_model.dart';
import 'package:p3l_k3_mobile/data/model/balance_history_model.dart';

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

Future<int> getCustomerBalance(int customerId, String token) async {
  final Response response;

  try {
    response = await dio.get(
      '/show-balance/$customerId',
      options: Options(
        headers: <String, String>{
          'Authorization': 'Bearer $token',
        },
      ),
    );
    return response.data['data']['balance'] as int;
  } on DioException catch (e) {
    if (e.response != null) {
      Logger().e(e.response?.data);
    } else {
      Logger().e(e.message);
    }
    rethrow;
  }
}

Future<void> withdrawCustomerBalance(int customerId, String token, int amount,
    String bankName, String accountNumber, String detailInformation) async {
  final Response response;

  try {
    response = await dio.post(
      '/withdraw-balance/$customerId',
      data: {
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


