// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hampers_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HampersDetailImpl _$$HampersDetailImplFromJson(Map<String, dynamic> json) =>
    _$HampersDetailImpl(
      id: json['id'] as int,
      hampersId: json['hampers_id'] as int,
      productId: json['product_id'] as int,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HampersDetailImplToJson(_$HampersDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hampers_id': instance.hampersId,
      'product_id': instance.productId,
      'product': instance.product.toJson(),
    };
