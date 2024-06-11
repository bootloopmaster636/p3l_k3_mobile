import 'package:freezed_annotation/freezed_annotation.dart';

import 'ingredient_model.dart';

part 'ingredient_use_history_model.freezed.dart';
part 'ingredient_use_history_model.g.dart';

@freezed
class IngredientUseHistory with _$IngredientUseHistory {
  const factory IngredientUseHistory({
    required int id,
    required Ingredient ingredients,
    required DateTime date,
    required int quantity,
  }) = _IngredientUseHistory;

  factory IngredientUseHistory.fromJson(Map<String, dynamic> json) => _$IngredientUseHistoryFromJson(json);
}
