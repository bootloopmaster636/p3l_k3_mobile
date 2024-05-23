import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:p3l_k3_mobile/data/model/ingredient_model.dart';
import 'package:p3l_k3_mobile/data/model/product_model.dart';

part 'hampers_detail_model.freezed.dart';
part 'hampers_detail_model.g.dart';

@freezed
class HampersDetail with _$HampersDetail {
  const factory HampersDetail({
    required int id,
    @JsonKey(name: 'hampers_id') required int hampersId,
    @JsonKey(name: 'product_id') required int? productId,
    @JsonKey(name: 'ingredient_id') @Default(0) int ingredientId,
    required Product? product,
    required Ingredient? ingredient,
  }) = _HampersDetail;

  factory HampersDetail.fromJson(Map<String, dynamic> json) => _$HampersDetailFromJson(json);
}
