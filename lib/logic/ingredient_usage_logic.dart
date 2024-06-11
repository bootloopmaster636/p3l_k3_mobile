import 'package:p3l_k3_mobile/data/api/ingredient_use_history_api.dart';
import 'package:p3l_k3_mobile/data/model/ingredient_use_history_model.dart';
import 'package:p3l_k3_mobile/logic/auth_logic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ingredient_usage_logic.g.dart';

@Riverpod(keepAlive: true)
class IngredientUsageLogic extends _$IngredientUsageLogic {
  @override
  Future<List<IngredientUseHistory>> build() async {
    return [];
  }

  Future<void> generate(DateTime from, DateTime to) async {
    state = const AsyncValue.loading();
    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
    final List<IngredientUseHistory> ingredient = await fetchAllIngredientUsageHistory(token, from, to);
    state = AsyncValue.data(ingredient);
  }
}
