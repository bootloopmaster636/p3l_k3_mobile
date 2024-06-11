import 'package:p3l_k3_mobile/data/api/employee_api.dart';
import 'package:p3l_k3_mobile/data/model/employee_model.dart';
import 'package:p3l_k3_mobile/logic/auth_logic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'employee_logic.g.dart';

@riverpod
class EmployeeLogic extends _$EmployeeLogic {
  @override
  Future<List<Employee>> build() {
    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
    return fetchAllEmployee(token);
  }

  Future<void> fetchAll() async {
    state = const AsyncLoading<List<Employee>>();
    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';

    try {
      final List<Employee> employees = await fetchAllEmployee(token);
      state = AsyncData<List<Employee>>(employees);
    } catch (e) {
      state = AsyncError<List<Employee>>(e, StackTrace.current);
      rethrow;
    }
  }
}
