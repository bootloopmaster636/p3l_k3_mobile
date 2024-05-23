import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:p3l_k3_mobile/data/api/dio.dart';
import 'package:p3l_k3_mobile/data/model/hampers_model.dart';

Future<List<Hampers>> fetchAllHampers(String token) async {
  final Response response;

  try {
    response = await dio.get(
      '/hampers',
      options: Options(
        headers: <String, String>{
          'Authorization': 'Bearer $token',
        },
      ),
    );
    Logger().d('check');
    final List<dynamic> allHampersRaw = (response.data['data']['hampers'] as List<dynamic>);
    final List<Hampers> allHampers =
        allHampersRaw.map((dynamic e) => Hampers.fromJson(e as Map<String, dynamic>)).toList();
    return allHampers;
  } on DioException catch (e) {
    if (e.response != null) {
      Logger().e(e.response?.data);
    } else {
      Logger().e(e.message);
    }
    rethrow;
  }
}
