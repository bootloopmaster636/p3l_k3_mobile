import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:p3l_k3_mobile/data/model/product_model.dart';

part 'ingredient_model.freezed.dart';
part 'ingredient_model.g.dart';

@freezed
class Ingredient with _$Ingredient {
  const factory Ingredient({
    required int id,
    @JsonKey(name: 'ingredient_name') required String name,
    required int? quantity,
    required String unit,
    required int active,
  }) = _Ingredient;

  factory Ingredient.fromJson(Map<String, dynamic> json) => _$IngredientFromJson(json);
}
