// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerBalanceHistoryImpl _$$CustomerBalanceHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerBalanceHistoryImpl(
      id: json['id'] as int,
      customerId: json['customerId'] as int,
      nominalBalance: json['nominalBalance'] as int,
      bankName: json['bankName'] as String,
      accountNumber: json['accountNumber'] as String,
      date: json['date'] as String,
      detailInformation: json['detailInformation'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$CustomerBalanceHistoryImplToJson(
        _$CustomerBalanceHistoryImpl instance) =>
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
