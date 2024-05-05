// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      id: json['id'] as int,
      point: json['point'] as int,
      nominalBalance: json['nominal_balance'] as int,
      user: User.fromJson(json['users'] as Map<String, dynamic>),
      userId: json['userId'] as int? ?? 0,
    );

Map<String, dynamic> _$$CustomerImplToJson(_$CustomerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'point': instance.point,
      'nominal_balance': instance.nominalBalance,
      'users': instance.user.toJson(),
      'userId': instance.userId,
    };
