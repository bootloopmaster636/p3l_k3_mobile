// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hampers_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HampersDetailImpl _$$HampersDetailImplFromJson(Map<String, dynamic> json) =>
    _$HampersDetailImpl(
      id: (json['id'] as num).toInt(),
      hampersId: (json['hampers_id'] as num).toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      ingredientId: (json['ingredient_id'] as num?)?.toInt() ?? 0,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      ingredients: json['ingredients'] == null
          ? null
          : Ingredient.fromJson(json['ingredients'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HampersDetailImplToJson(_$HampersDetailImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'hampers_id': instance.hampersId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product_id', instance.productId);
  val['ingredient_id'] = instance.ingredientId;
  writeNotNull('product', instance.product?.toJson());
  writeNotNull('ingredients', instance.ingredients?.toJson());
  return val;
}
