import 'package:p3l_k3_mobile/data/api/hampers_api.dart';
import 'package:p3l_k3_mobile/data/model/hampers_model.dart';
import 'package:p3l_k3_mobile/logic/auth_logic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ingredient_logic.g.dart';

@riverpod
class IngredientLogic extends _$IngredientLogic {
  @override
  Future<List<Hampers>> build() async {
    state = const AsyncValue.loading();
    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
    final List<Hampers> hampers = await fetchAllHampers(token);
    return hampers;
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
    final List<Hampers> hampers = await fetchAllHampers(token);
    state = AsyncValue.data(hampers);
  }
}

Hampers getHampersById(List<Hampers> hampers, int id) {
  return hampers.firstWhere((Hampers hampers) => hampers.id == id);
}
