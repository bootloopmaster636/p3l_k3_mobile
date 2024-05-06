import 'package:p3l_k3_mobile/data/api/employee_api.dart';
import 'package:p3l_k3_mobile/data/model/employee_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'employee_logic.g.dart';

@riverpod
class EmployeeLogic extends _$EmployeeLogic {
  @override
  Future<List<Employee>> build() {
    return fetchAllEmployee();
  }

  Future<void> fetchAll() async {
    state = const AsyncLoading<List<Employee>>();

    try {
      final List<Employee> employees = await fetchAllEmployee();
      state = AsyncData<List<Employee>>(employees);
    } catch (e) {
      state = AsyncError<List<Employee>>(e, StackTrace.current);
      rethrow;
    }
  }
}
