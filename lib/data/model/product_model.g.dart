// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as int,
      consignorId: json['consignor_id'] as int,
      categoryId: json['category_id'] as int,
      name: json['product_name'] as String,
      readyStock: json['ready_stock'] as int,
      dailyStock: json['daily_stock'] as int,
      price: json['product_price'] as int,
      status: json['product_status'] as String,
      picture: json['product_picture'] as String,
      active: json['active'] as bool,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'consignor_id': instance.consignorId,
      'category_id': instance.categoryId,
      'product_name': instance.name,
      'ready_stock': instance.readyStock,
      'daily_stock': instance.dailyStock,
      'product_price': instance.price,
      'product_status': instance.status,
      'product_picture': instance.picture,
      'active': instance.active,
      'description': instance.description,
    };
