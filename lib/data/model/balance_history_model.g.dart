// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerBalanceHistoryImpl _$$CustomerBalanceHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerBalanceHistoryImpl(
      id: (json['id'] as num).toInt(),
      customerId: (json['customer_id'] as num).toInt(),
      nominalBalance: (json['nominal_balance'] as num).toInt(),
      bankName: json['bank_name'] as String,
      accountNumber: json['account_number'] as String,
      date: DateTime.parse(json['date'] as String),
      detailInformation: json['detail_information'] as String,
    );

Map<String, dynamic> _$$CustomerBalanceHistoryImplToJson(
        _$CustomerBalanceHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_id': instance.customerId,
      'nominal_balance': instance.nominalBalance,
      'bank_name': instance.bankName,
      'account_number': instance.accountNumber,
      'date': instance.date.toIso8601String(),
      'detail_information': instance.detailInformation,
    };
