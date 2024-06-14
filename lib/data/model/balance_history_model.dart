import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'balance_history_model.freezed.dart';
part 'balance_history_model.g.dart';

@freezed
class CustomerBalanceHistory with _$CustomerBalanceHistory {
  const factory CustomerBalanceHistory({
    required int id,
    @JsonKey(name: 'customer_id') required int customerId,
    @JsonKey(name: 'nominal_balance') required int nominalBalance,
    @JsonKey(name: 'bank_name') required String bankName,
    @JsonKey(name: 'account_number') required String accountNumber,
    required DateTime date,
    required String? status,
    @JsonKey(name: 'detail_information') required String detailInformation,
  }) = _CustomerBalanceHistory;

  factory CustomerBalanceHistory.fromJson(Map<String, dynamic> json) =>
      _$CustomerBalanceHistoryFromJson(json);
}
