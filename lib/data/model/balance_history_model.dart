import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'balance_history_model.freezed.dart';
part 'balance_history_model.g.dart';

@freezed
class CustomerBalanceHistory with _$CustomerBalanceHistory {
  const factory CustomerBalanceHistory({
    required int id,
    required int customerId,
    required int nominalBalance,
    required String bankName,
    required String accountNumber,
    required String date,
    required String detailInformation,
    required String status,
  }) = _CustomerBalanceHistory;

  factory CustomerBalanceHistory.fromJson(Map<String, dynamic> json) => _$CustomerBalanceHistoryFromJson(json);
}
