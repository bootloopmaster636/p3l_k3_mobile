// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return _Customer.fromJson(json);
}

/// @nodoc
mixin _$Customer {
  int get id => throw _privateConstructorUsedError;
  int get point => throw _privateConstructorUsedError;
  @JsonKey(name: 'nominal_balance')
  int get nominalBalance => throw _privateConstructorUsedError;
  @JsonKey(name: 'users')
  User? get user => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res, Customer>;
  @useResult
  $Res call(
      {int id,
      int point,
      @JsonKey(name: 'nominal_balance') int nominalBalance,
      @JsonKey(name: 'users') User? user,
      int userId});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res, $Val extends Customer>
    implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? point = null,
    Object? nominalBalance = null,
    Object? user = freezed,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      nominalBalance: null == nominalBalance
          ? _value.nominalBalance
          : nominalBalance // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomerImplCopyWith<$Res>
    implements $CustomerCopyWith<$Res> {
  factory _$$CustomerImplCopyWith(
          _$CustomerImpl value, $Res Function(_$CustomerImpl) then) =
      __$$CustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int point,
      @JsonKey(name: 'nominal_balance') int nominalBalance,
      @JsonKey(name: 'users') User? user,
      int userId});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$CustomerImplCopyWithImpl<$Res>
    extends _$CustomerCopyWithImpl<$Res, _$CustomerImpl>
    implements _$$CustomerImplCopyWith<$Res> {
  __$$CustomerImplCopyWithImpl(
      _$CustomerImpl _value, $Res Function(_$CustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? point = null,
    Object? nominalBalance = null,
    Object? user = freezed,
    Object? userId = null,
  }) {
    return _then(_$CustomerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      nominalBalance: null == nominalBalance
          ? _value.nominalBalance
          : nominalBalance // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerImpl with DiagnosticableTreeMixin implements _Customer {
  const _$CustomerImpl(
      {required this.id,
      required this.point,
      @JsonKey(name: 'nominal_balance') required this.nominalBalance,
      @JsonKey(name: 'users') required this.user,
      this.userId = 0});

  factory _$CustomerImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerImplFromJson(json);

  @override
  final int id;
  @override
  final int point;
  @override
  @JsonKey(name: 'nominal_balance')
  final int nominalBalance;
  @override
  @JsonKey(name: 'users')
  final User? user;
  @override
  @JsonKey()
  final int userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Customer(id: $id, point: $point, nominalBalance: $nominalBalance, user: $user, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Customer'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('point', point))
      ..add(DiagnosticsProperty('nominalBalance', nominalBalance))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.point, point) || other.point == point) &&
            (identical(other.nominalBalance, nominalBalance) ||
                other.nominalBalance == nominalBalance) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, point, nominalBalance, user, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      __$$CustomerImplCopyWithImpl<_$CustomerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerImplToJson(
      this,
    );
  }
}

abstract class _Customer implements Customer {
  const factory _Customer(
      {required final int id,
      required final int point,
      @JsonKey(name: 'nominal_balance') required final int nominalBalance,
      @JsonKey(name: 'users') required final User? user,
      final int userId}) = _$CustomerImpl;

  factory _Customer.fromJson(Map<String, dynamic> json) =
      _$CustomerImpl.fromJson;

  @override
  int get id;
  @override
  int get point;
  @override
  @JsonKey(name: 'nominal_balance')
  int get nominalBalance;
  @override
  @JsonKey(name: 'users')
  User? get user;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BalanceHistory _$BalanceHistoryFromJson(Map<String, dynamic> json) {
  return _BalanceHistory.fromJson(json);
}

/// @nodoc
mixin _$BalanceHistory {
  int get id => throw _privateConstructorUsedError;
  int get customerId => throw _privateConstructorUsedError;
  int get nominalBalance => throw _privateConstructorUsedError;
  String get bankName => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get detailInformation => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BalanceHistoryCopyWith<BalanceHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceHistoryCopyWith<$Res> {
  factory $BalanceHistoryCopyWith(
          BalanceHistory value, $Res Function(BalanceHistory) then) =
      _$BalanceHistoryCopyWithImpl<$Res, BalanceHistory>;
  @useResult
  $Res call(
      {int id,
      int customerId,
      int nominalBalance,
      String bankName,
      String accountNumber,
      String date,
      String detailInformation,
      String status});
}

/// @nodoc
class _$BalanceHistoryCopyWithImpl<$Res, $Val extends BalanceHistory>
    implements $BalanceHistoryCopyWith<$Res> {
  _$BalanceHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? nominalBalance = null,
    Object? bankName = null,
    Object? accountNumber = null,
    Object? date = null,
    Object? detailInformation = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      nominalBalance: null == nominalBalance
          ? _value.nominalBalance
          : nominalBalance // ignore: cast_nullable_to_non_nullable
              as int,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      detailInformation: null == detailInformation
          ? _value.detailInformation
          : detailInformation // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BalanceHistoryImplCopyWith<$Res>
    implements $BalanceHistoryCopyWith<$Res> {
  factory _$$BalanceHistoryImplCopyWith(_$BalanceHistoryImpl value,
          $Res Function(_$BalanceHistoryImpl) then) =
      __$$BalanceHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int customerId,
      int nominalBalance,
      String bankName,
      String accountNumber,
      String date,
      String detailInformation,
      String status});
}

/// @nodoc
class __$$BalanceHistoryImplCopyWithImpl<$Res>
    extends _$BalanceHistoryCopyWithImpl<$Res, _$BalanceHistoryImpl>
    implements _$$BalanceHistoryImplCopyWith<$Res> {
  __$$BalanceHistoryImplCopyWithImpl(
      _$BalanceHistoryImpl _value, $Res Function(_$BalanceHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? nominalBalance = null,
    Object? bankName = null,
    Object? accountNumber = null,
    Object? date = null,
    Object? detailInformation = null,
    Object? status = null,
  }) {
    return _then(_$BalanceHistoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      nominalBalance: null == nominalBalance
          ? _value.nominalBalance
          : nominalBalance // ignore: cast_nullable_to_non_nullable
              as int,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      detailInformation: null == detailInformation
          ? _value.detailInformation
          : detailInformation // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BalanceHistoryImpl
    with DiagnosticableTreeMixin
    implements _BalanceHistory {
  const _$BalanceHistoryImpl(
      {required this.id,
      required this.customerId,
      required this.nominalBalance,
      required this.bankName,
      required this.accountNumber,
      required this.date,
      required this.detailInformation,
      required this.status});

  factory _$BalanceHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$BalanceHistoryImplFromJson(json);

  @override
  final int id;
  @override
  final int customerId;
  @override
  final int nominalBalance;
  @override
  final String bankName;
  @override
  final String accountNumber;
  @override
  final String date;
  @override
  final String detailInformation;
  @override
  final String status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BalanceHistory(id: $id, customerId: $customerId, nominalBalance: $nominalBalance, bankName: $bankName, accountNumber: $accountNumber, date: $date, detailInformation: $detailInformation, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BalanceHistory'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('customerId', customerId))
      ..add(DiagnosticsProperty('nominalBalance', nominalBalance))
      ..add(DiagnosticsProperty('bankName', bankName))
      ..add(DiagnosticsProperty('accountNumber', accountNumber))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('detailInformation', detailInformation))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BalanceHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.nominalBalance, nominalBalance) ||
                other.nominalBalance == nominalBalance) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.detailInformation, detailInformation) ||
                other.detailInformation == detailInformation) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, customerId, nominalBalance,
      bankName, accountNumber, date, detailInformation, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BalanceHistoryImplCopyWith<_$BalanceHistoryImpl> get copyWith =>
      __$$BalanceHistoryImplCopyWithImpl<_$BalanceHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BalanceHistoryImplToJson(
      this,
    );
  }
}

abstract class _BalanceHistory implements BalanceHistory {
  const factory _BalanceHistory(
      {required final int id,
      required final int customerId,
      required final int nominalBalance,
      required final String bankName,
      required final String accountNumber,
      required final String date,
      required final String detailInformation,
      required final String status}) = _$BalanceHistoryImpl;

  factory _BalanceHistory.fromJson(Map<String, dynamic> json) =
      _$BalanceHistoryImpl.fromJson;

  @override
  int get id;
  @override
  int get customerId;
  @override
  int get nominalBalance;
  @override
  String get bankName;
  @override
  String get accountNumber;
  @override
  String get date;
  @override
  String get detailInformation;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$BalanceHistoryImplCopyWith<_$BalanceHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
