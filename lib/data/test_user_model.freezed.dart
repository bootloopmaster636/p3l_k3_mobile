// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TestUser {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  List<String> get alamat => throw _privateConstructorUsedError;
  int get poin => throw _privateConstructorUsedError;
  double get saldo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestUserCopyWith<TestUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestUserCopyWith<$Res> {
  factory $TestUserCopyWith(TestUser value, $Res Function(TestUser) then) =
      _$TestUserCopyWithImpl<$Res, TestUser>;
  @useResult
  $Res call(
      {String name, String email, List<String> alamat, int poin, double saldo});
}

/// @nodoc
class _$TestUserCopyWithImpl<$Res, $Val extends TestUser>
    implements $TestUserCopyWith<$Res> {
  _$TestUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? alamat = null,
    Object? poin = null,
    Object? saldo = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      alamat: null == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as List<String>,
      poin: null == poin
          ? _value.poin
          : poin // ignore: cast_nullable_to_non_nullable
              as int,
      saldo: null == saldo
          ? _value.saldo
          : saldo // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestUserImplCopyWith<$Res>
    implements $TestUserCopyWith<$Res> {
  factory _$$TestUserImplCopyWith(
          _$TestUserImpl value, $Res Function(_$TestUserImpl) then) =
      __$$TestUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String email, List<String> alamat, int poin, double saldo});
}

/// @nodoc
class __$$TestUserImplCopyWithImpl<$Res>
    extends _$TestUserCopyWithImpl<$Res, _$TestUserImpl>
    implements _$$TestUserImplCopyWith<$Res> {
  __$$TestUserImplCopyWithImpl(
      _$TestUserImpl _value, $Res Function(_$TestUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? alamat = null,
    Object? poin = null,
    Object? saldo = null,
  }) {
    return _then(_$TestUserImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      alamat: null == alamat
          ? _value._alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as List<String>,
      poin: null == poin
          ? _value.poin
          : poin // ignore: cast_nullable_to_non_nullable
              as int,
      saldo: null == saldo
          ? _value.saldo
          : saldo // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$TestUserImpl implements _TestUser {
  const _$TestUserImpl(
      {required this.name,
      required this.email,
      required final List<String> alamat,
      required this.poin,
      required this.saldo})
      : _alamat = alamat;

  @override
  final String name;
  @override
  final String email;
  final List<String> _alamat;
  @override
  List<String> get alamat {
    if (_alamat is EqualUnmodifiableListView) return _alamat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alamat);
  }

  @override
  final int poin;
  @override
  final double saldo;

  @override
  String toString() {
    return 'TestUser(name: $name, email: $email, alamat: $alamat, poin: $poin, saldo: $saldo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestUserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other._alamat, _alamat) &&
            (identical(other.poin, poin) || other.poin == poin) &&
            (identical(other.saldo, saldo) || other.saldo == saldo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email,
      const DeepCollectionEquality().hash(_alamat), poin, saldo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestUserImplCopyWith<_$TestUserImpl> get copyWith =>
      __$$TestUserImplCopyWithImpl<_$TestUserImpl>(this, _$identity);
}

abstract class _TestUser implements TestUser {
  const factory _TestUser(
      {required final String name,
      required final String email,
      required final List<String> alamat,
      required final int poin,
      required final double saldo}) = _$TestUserImpl;

  @override
  String get name;
  @override
  String get email;
  @override
  List<String> get alamat;
  @override
  int get poin;
  @override
  double get saldo;
  @override
  @JsonKey(ignore: true)
  _$$TestUserImplCopyWith<_$TestUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
