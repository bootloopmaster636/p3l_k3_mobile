// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hampers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HampersImpl _$$HampersImplFromJson(Map<String, dynamic> json) =>
    _$HampersImpl(
      id: (json['id'] as num).toInt(),
      name: json['hampers_name'] as String,
      price: (json['hampers_price'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      picture: json['hampers_picture'] as String,
      active: (json['active'] as num).toInt(),
      hampersDetail: (json['hampers_detail'] as List<dynamic>?)
          ?.map((e) => HampersDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HampersImplToJson(_$HampersImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'hampers_name': instance.name,
    'hampers_price': instance.price,
    'quantity': instance.quantity,
    'hampers_picture': instance.picture,
    'active': instance.active,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hampers_detail',
      instance.hampersDetail?.map((e) => e.toJson()).toList());
  return val;
}
