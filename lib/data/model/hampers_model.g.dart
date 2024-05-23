// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hampers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HampersImpl _$$HampersImplFromJson(Map<String, dynamic> json) =>
    _$HampersImpl(
      id: json['id'] as int,
      name: json['hampers_name'] as String,
      price: json['hampers_price'] as int,
      quantity: json['quantity'] as int,
      picture: json['hampers_picture'] as String,
      active: json['active'] as int,
      hampersDetail: (json['hampers_detail'] as List<dynamic>)
          .map((e) => HampersDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HampersImplToJson(_$HampersImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hampers_name': instance.name,
      'hampers_price': instance.price,
      'quantity': instance.quantity,
      'hampers_picture': instance.picture,
      'active': instance.active,
      'hampers_detail': instance.hampersDetail.map((e) => e.toJson()).toList(),
    };
