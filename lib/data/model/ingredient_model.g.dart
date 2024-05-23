// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IngredientImpl _$$IngredientImplFromJson(Map<String, dynamic> json) =>
    _$IngredientImpl(
      id: json['id'] as int,
      name: json['ingredient_name'] as String,
      quantity: json['quantity'] as int?,
      unit: json['unit'] as String,
      active: json['active'] as int,
    );

Map<String, dynamic> _$$IngredientImplToJson(_$IngredientImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'ingredient_name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('quantity', instance.quantity);
  val['unit'] = instance.unit;
  val['active'] = instance.active;
  return val;
}
