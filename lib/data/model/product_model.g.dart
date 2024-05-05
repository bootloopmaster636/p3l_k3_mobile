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
      productName: json['product_name'] as String,
      readyStock: json['ready_stock'] as int,
      dailyStock: json['daily_stock'] as int,
      productPrice: json['product_price'] as int,
      productStatus: json['product_status'] as String,
      productPicture: json['product_picture'] as String,
      active: json['active'] as bool,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'consignor_id': instance.consignorId,
      'category_id': instance.categoryId,
      'product_name': instance.productName,
      'ready_stock': instance.readyStock,
      'daily_stock': instance.dailyStock,
      'product_price': instance.productPrice,
      'product_status': instance.productStatus,
      'product_picture': instance.productPicture,
      'active': instance.active,
      'description': instance.description,
    };
