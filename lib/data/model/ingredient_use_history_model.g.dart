// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_use_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IngredientUseHistoryImpl _$$IngredientUseHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$IngredientUseHistoryImpl(
      id: (json['id'] as num).toInt(),
      ingredients:
          Ingredient.fromJson(json['ingredients'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$$IngredientUseHistoryImplToJson(
        _$IngredientUseHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ingredients': instance.ingredients.toJson(),
      'date': instance.date.toIso8601String(),
      'quantity': instance.quantity,
    };
