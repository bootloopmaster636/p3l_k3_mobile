// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerImpl _$$CustomerImplFromJson(Map<String, dynamic> json) =>
    _$CustomerImpl(
      id: (json['id'] as num).toInt(),
      point: (json['point'] as num).toInt(),
      nominalBalance: (json['nominal_balance'] as num).toInt(),
      user: json['users'] == null
          ? null
          : User.fromJson(json['users'] as Map<String, dynamic>),
      userId: (json['userId'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CustomerImplToJson(_$CustomerImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'point': instance.point,
    'nominal_balance': instance.nominalBalance,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('users', instance.user?.toJson());
  val['userId'] = instance.userId;
  return val;
}

_$BalanceHistoryImpl _$$BalanceHistoryImplFromJson(Map<String, dynamic> json) =>
    _$BalanceHistoryImpl(
      id: (json['id'] as num).toInt(),
      customerId: (json['customerId'] as num).toInt(),
      nominalBalance: (json['nominalBalance'] as num).toInt(),
      bankName: json['bankName'] as String,
      accountNumber: json['accountNumber'] as String,
      date: json['date'] as String,
      detailInformation: json['detailInformation'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$BalanceHistoryImplToJson(
        _$BalanceHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customerId': instance.customerId,
      'nominalBalance': instance.nominalBalance,
      'bankName': instance.bankName,
      'accountNumber': instance.accountNumber,
      'date': instance.date,
      'detailInformation': instance.detailInformation,
      'status': instance.status,
    };
