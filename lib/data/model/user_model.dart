import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    @JsonKey(name: 'role_id') required int roleId,
    required String fullName,
    required String email,
    // @Default('') String? password,
    required String phoneNumber,
    required String gender,
    required DateTime dateOfBirth,
    required int active,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

User generateEmptyUser() {
  return User(
    active: 0,
    dateOfBirth: DateTime.now(),
    email: '',
    fullName: '',
    gender: '',
    id: 0,
    phoneNumber: '',
    roleId: 0,
  );
}
