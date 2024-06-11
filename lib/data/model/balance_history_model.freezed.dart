// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerBalanceHistory _$CustomerBalanceHistoryFromJson(
    Map<String, dynamic> json) {
  return _CustomerBalanceHistory.fromJson(json);
}

/// @nodoc
mixin _$CustomerBalanceHistory {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  int get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'nominal_balance')
  int get nominalBalance => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank_name')
  String get bankName => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_number')
  String get accountNumber => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'detail_information')
  String get detailInformation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerBalanceHistoryCopyWith<CustomerBalanceHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerBalanceHistoryCopyWith<$Res> {
  factory $CustomerBalanceHistoryCopyWith(CustomerBalanceHistory value,
          $Res Function(CustomerBalanceHistory) then) =
      _$CustomerBalanceHistoryCopyWithImpl<$Res, CustomerBalanceHistory>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'nominal_balance') int nominalBalance,
      @JsonKey(name: 'bank_name') String bankName,
      @JsonKey(name: 'account_number') String accountNumber,
      DateTime date,
      @JsonKey(name: 'detail_information') String detailInformation});
}

/// @nodoc
class _$CustomerBalanceHistoryCopyWithImpl<$Res,
        $Val extends CustomerBalanceHistory>
    implements $CustomerBalanceHistoryCopyWith<$Res> {
  _$CustomerBalanceHistoryCopyWithImpl(this._value, this._then);

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
              as DateTime,
      detailInformation: null == detailInformation
          ? _value.detailInformation
          : detailInformation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerBalanceHistoryImplCopyWith<$Res>
    implements $CustomerBalanceHistoryCopyWith<$Res> {
  factory _$$CustomerBalanceHistoryImplCopyWith(
          _$CustomerBalanceHistoryImpl value,
          $Res Function(_$CustomerBalanceHistoryImpl) then) =
      __$$CustomerBalanceHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'nominal_balance') int nominalBalance,
      @JsonKey(name: 'bank_name') String bankName,
      @JsonKey(name: 'account_number') String accountNumber,
      DateTime date,
      @JsonKey(name: 'detail_information') String detailInformation});
}

/// @nodoc
class __$$CustomerBalanceHistoryImplCopyWithImpl<$Res>
    extends _$CustomerBalanceHistoryCopyWithImpl<$Res,
        _$CustomerBalanceHistoryImpl>
    implements _$$CustomerBalanceHistoryImplCopyWith<$Res> {
  __$$CustomerBalanceHistoryImplCopyWithImpl(
      _$CustomerBalanceHistoryImpl _value,
      $Res Function(_$CustomerBalanceHistoryImpl) _then)
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
  }) {
    return _then(_$CustomerBalanceHistoryImpl(
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
              as DateTime,
      detailInformation: null == detailInformation
          ? _value.detailInformation
          : detailInformation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerBalanceHistoryImpl
    with DiagnosticableTreeMixin
    implements _CustomerBalanceHistory {
  const _$CustomerBalanceHistoryImpl(
      {required this.id,
      @JsonKey(name: 'customer_id') required this.customerId,
      @JsonKey(name: 'nominal_balance') required this.nominalBalance,
      @JsonKey(name: 'bank_name') required this.bankName,
      @JsonKey(name: 'account_number') required this.accountNumber,
      required this.date,
      @JsonKey(name: 'detail_information') required this.detailInformation});

  factory _$CustomerBalanceHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerBalanceHistoryImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'customer_id')
  final int customerId;
  @override
  @JsonKey(name: 'nominal_balance')
  final int nominalBalance;
  @override
  @JsonKey(name: 'bank_name')
  final String bankName;
  @override
  @JsonKey(name: 'account_number')
  final String accountNumber;
  @override
  final DateTime date;
  @override
  @JsonKey(name: 'detail_information')
  final String detailInformation;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomerBalanceHistory(id: $id, customerId: $customerId, nominalBalance: $nominalBalance, bankName: $bankName, accountNumber: $accountNumber, date: $date, detailInformation: $detailInformation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CustomerBalanceHistory'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('customerId', customerId))
      ..add(DiagnosticsProperty('nominalBalance', nominalBalance))
      ..add(DiagnosticsProperty('bankName', bankName))
      ..add(DiagnosticsProperty('accountNumber', accountNumber))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('detailInformation', detailInformation));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerBalanceHistoryImpl &&
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
                other.detailInformation == detailInformation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, customerId, nominalBalance,
      bankName, accountNumber, date, detailInformation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerBalanceHistoryImplCopyWith<_$CustomerBalanceHistoryImpl>
      get copyWith => __$$CustomerBalanceHistoryImplCopyWithImpl<
          _$CustomerBalanceHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerBalanceHistoryImplToJson(
      this,
    );
  }
}

abstract class _CustomerBalanceHistory implements CustomerBalanceHistory {
  const factory _CustomerBalanceHistory(
      {required final int id,
      @JsonKey(name: 'customer_id') required final int customerId,
      @JsonKey(name: 'nominal_balance') required final int nominalBalance,
      @JsonKey(name: 'bank_name') required final String bankName,
      @JsonKey(name: 'account_number') required final String accountNumber,
      required final DateTime date,
      @JsonKey(name: 'detail_information')
      required final String detailInformation}) = _$CustomerBalanceHistoryImpl;

  factory _CustomerBalanceHistory.fromJson(Map<String, dynamic> json) =
      _$CustomerBalanceHistoryImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'customer_id')
  int get customerId;
  @override
  @JsonKey(name: 'nominal_balance')
  int get nominalBalance;
  @override
  @JsonKey(name: 'bank_name')
  String get bankName;
  @override
  @JsonKey(name: 'account_number')
  String get accountNumber;
  @override
  DateTime get date;
  @override
  @JsonKey(name: 'detail_information')
  String get detailInformation;
  @override
  @JsonKey(ignore: true)
  _$$CustomerBalanceHistoryImplCopyWith<_$CustomerBalanceHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
