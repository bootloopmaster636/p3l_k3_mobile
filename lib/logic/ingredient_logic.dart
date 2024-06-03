import 'package:p3l_k3_mobile/data/api/hampers_api.dart';
import 'package:p3l_k3_mobile/data/api/ingredient_api.dart';
import 'package:p3l_k3_mobile/data/model/hampers_model.dart';
import 'package:p3l_k3_mobile/data/model/ingredient_model.dart';
import 'package:p3l_k3_mobile/logic/auth_logic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ingredient_logic.g.dart';

@riverpod
class IngredientLogic extends _$IngredientLogic {
  @override
  Future<List<Ingredient>> build() async {
    state = const AsyncValue.loading();
    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
    final List<Ingredient> ingredient = await fetchAllIngredient(token);
    return ingredient;
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
    final List<Ingredient> ingredient = await fetchAllIngredient(token);
    state = AsyncValue.data(ingredient);
  }
}

Ingredient getHampersById(List<Ingredient> ingredient, int id) {
  return ingredient.firstWhere((Ingredient ingredient) => ingredient.id == id);
}
