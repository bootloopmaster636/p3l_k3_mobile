import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:p3l_k3_mobile/data/api/dio.dart';
import 'package:p3l_k3_mobile/data/model/employee_model.dart';

Future<List<Employee>> fetchAllEmployee() async {
  final Response response;

  try {
    response = await dio.get('/employee');
    return (response.data['data'] as List<dynamic>).map((data) {
      return Employee.fromJson(data as Map<String, dynamic>);
    }).toList();
  } on DioException catch (e) {
    // The request was made and the server responded with a status code
    // that falls out of the range of 2xx and is also not 304.
    if (e.response != null) {
      Logger().e(e.response?.data);
      Logger().e(e.response?.headers);
      Logger().e(e.response?.requestOptions);
    } else {
      // Something happened in setting up or sending the request that triggered an Error
      Logger().e(e.requestOptions);
      Logger().e(e.message);
    }
    rethrow;
  }
}

Future<Employee> getEmployeeById(int id) async {
  final Response response;

  try {
    response = await dio.get('/employee/$id');
    return Employee.fromJson(response.data as Map<String, dynamic>);
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

Future<void> createEmployee(Employee employee) async {
  final Response response;

  try {
    response = await dio.post('/employee', data: employee.toJson());
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
