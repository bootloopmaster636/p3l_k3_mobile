import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:p3l_k3_mobile/data/model/user_model.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@freezed
class Customer with _$Customer {
  const factory Customer({
    required int id,
    required int point,
    @JsonKey(name: 'nominal_balance') required int nominalBalance,
    @JsonKey(name: 'users') required User? user,
    @Default(0) int userId, // might not be useful.. just comment it if it makes trouble
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);
}

Customer makeGuestCustomer() {
  return const Customer(
    id: 0,
    point: 0,
    nominalBalance: 0,
    user: User(
      id: 0,
      fullName: 'Guest User',
      email: '',
      roleId: 4,
      phoneNumber: '',
      gender: '',
      dateOfBirth: null,
      active: 1,
    ),
  );
}
