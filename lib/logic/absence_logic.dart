import 'package:p3l_k3_mobile/data/api/absence_api.dart';
import 'package:p3l_k3_mobile/data/model/absence_model.dart';
import 'package:p3l_k3_mobile/logic/auth_logic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'absence_logic.g.dart';

@riverpod
class AbsenceLogic extends _$AbsenceLogic {
  @override
  Future<List<Absence>> build() {
    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
    return fetchAllAbsence(token);
  }

  Future<void> fetchAll() async {
    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
    try {
      state = const AsyncLoading<List<Absence>>();
      final List<Absence> absences = await fetchAllAbsence(token);
      state = AsyncData<List<Absence>>(absences);
    } catch (e) {
      state = AsyncError<List<Absence>>(e, StackTrace.current);
      rethrow;
    }
  }

  Future<void> create(int employeeId, DateTime absentDate) async {
    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
    try {
      state = const AsyncLoading<List<Absence>>();
      await createAbsence(employeeId, absentDate, token);
      state = AsyncData<List<Absence>>(await fetchAllAbsence(token));
    } catch (e) {
      rethrow;
    }
  }

  Future<void> delete(int id) async {
    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
    try {
      state = const AsyncLoading<List<Absence>>();
      await deleteAbsence(id, token);
      state = AsyncData<List<Absence>>(await fetchAllAbsence(token));
    } catch (e) {
      rethrow;
    }
  }
}
