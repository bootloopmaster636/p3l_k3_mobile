import 'package:p3l_k3_mobile/data/api/absence_api.dart';
import 'package:p3l_k3_mobile/data/model/absence_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'absence_logic.g.dart';

@riverpod
class AbsenceLogic extends _$AbsenceLogic {
  @override
  Future<List<Absence>> build() {
    return fetchAllAbsence();
  }

  Future<void> fetchAll() async {
    state = const AsyncLoading<List<Absence>>();

    try {
      final List<Absence> absences = await fetchAllAbsence();
      state = AsyncData<List<Absence>>(absences);
    } catch (e) {
      state = AsyncError<List<Absence>>(e, StackTrace.current);
      rethrow;
    }
  }

  Future<void> create(Absence absence) async {
    try {
      state = const AsyncLoading<List<Absence>>();
      await createAbsence(absence);
      state = AsyncData<List<Absence>>(await fetchAllAbsence());
    } catch (e) {
      rethrow;
    }
  }

  Future<void> delete(int id) async {
    try {
      state = const AsyncLoading<List<Absence>>();
      await deleteAbsence(id);
      state = AsyncData<List<Absence>>(await fetchAllAbsence());
    } catch (e) {
      rethrow;
    }
  }
}
