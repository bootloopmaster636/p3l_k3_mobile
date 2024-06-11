import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:p3l_k3_mobile/data/model/user_model.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class Auth with _$Auth {
  const factory Auth({
    required User user,
    @JsonKey(name: 'access_token') required String accessToken,
  }) = _Auth;

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);
}
