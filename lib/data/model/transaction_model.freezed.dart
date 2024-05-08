// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  @JsonKey(name: 'employee_id')
  int get employeeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  int get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_id')
  int get deliveryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_date')
  DateTime get orderDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'paidoff_date')
  DateTime get paidoffDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_date')
  DateTime get pickupDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  String get paymentMethod => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_evidence')
  String get paymentEvidence => throw _privateConstructorUsedError;
  @JsonKey(name: 'used_point')
  int get usedPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'earned_point')
  int get earnedPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_price')
  int get totalPrice => throw _privateConstructorUsedError;
  int get tip => throw _privateConstructorUsedError;
  Employee? get employee => throw _privateConstructorUsedError;
  Customer? get customer => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  List<Cart>? get carts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {@JsonKey(name: 'employee_id') int employeeId,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'delivery_id') int deliveryId,
      @JsonKey(name: 'order_date') DateTime orderDate,
      @JsonKey(name: 'paidoff_date') DateTime paidoffDate,
      @JsonKey(name: 'pickup_date') DateTime pickupDate,
      @JsonKey(name: 'payment_method') String paymentMethod,
      String status,
      @JsonKey(name: 'payment_evidence') String paymentEvidence,
      @JsonKey(name: 'used_point') int usedPoint,
      @JsonKey(name: 'earned_point') int earnedPoint,
      @JsonKey(name: 'total_price') int totalPrice,
      int tip,
      Employee? employee,
      Customer? customer,
      int? id,
      List<Cart>? carts});

  $EmployeeCopyWith<$Res>? get employee;
  $CustomerCopyWith<$Res>? get customer;
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
    Object? customerId = null,
    Object? deliveryId = null,
    Object? orderDate = null,
    Object? paidoffDate = null,
    Object? pickupDate = null,
    Object? paymentMethod = null,
    Object? status = null,
    Object? paymentEvidence = null,
    Object? usedPoint = null,
    Object? earnedPoint = null,
    Object? totalPrice = null,
    Object? tip = null,
    Object? employee = freezed,
    Object? customer = freezed,
    Object? id = freezed,
    Object? carts = freezed,
  }) {
    return _then(_value.copyWith(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryId: null == deliveryId
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as int,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paidoffDate: null == paidoffDate
          ? _value.paidoffDate
          : paidoffDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pickupDate: null == pickupDate
          ? _value.pickupDate
          : pickupDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paymentEvidence: null == paymentEvidence
          ? _value.paymentEvidence
          : paymentEvidence // ignore: cast_nullable_to_non_nullable
              as String,
      usedPoint: null == usedPoint
          ? _value.usedPoint
          : usedPoint // ignore: cast_nullable_to_non_nullable
              as int,
      earnedPoint: null == earnedPoint
          ? _value.earnedPoint
          : earnedPoint // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      tip: null == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as int,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      carts: freezed == carts
          ? _value.carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<Cart>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res>? get employee {
    if (_value.employee == null) {
      return null;
    }

    return $EmployeeCopyWith<$Res>(_value.employee!, (value) {
      return _then(_value.copyWith(employee: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $CustomerCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionImplCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$TransactionImplCopyWith(
          _$TransactionImpl value, $Res Function(_$TransactionImpl) then) =
      __$$TransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'employee_id') int employeeId,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'delivery_id') int deliveryId,
      @JsonKey(name: 'order_date') DateTime orderDate,
      @JsonKey(name: 'paidoff_date') DateTime paidoffDate,
      @JsonKey(name: 'pickup_date') DateTime pickupDate,
      @JsonKey(name: 'payment_method') String paymentMethod,
      String status,
      @JsonKey(name: 'payment_evidence') String paymentEvidence,
      @JsonKey(name: 'used_point') int usedPoint,
      @JsonKey(name: 'earned_point') int earnedPoint,
      @JsonKey(name: 'total_price') int totalPrice,
      int tip,
      Employee? employee,
      Customer? customer,
      int? id,
      List<Cart>? carts});

  @override
  $EmployeeCopyWith<$Res>? get employee;
  @override
  $CustomerCopyWith<$Res>? get customer;
}

/// @nodoc
class __$$TransactionImplCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$TransactionImpl>
    implements _$$TransactionImplCopyWith<$Res> {
  __$$TransactionImplCopyWithImpl(
      _$TransactionImpl _value, $Res Function(_$TransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
    Object? customerId = null,
    Object? deliveryId = null,
    Object? orderDate = null,
    Object? paidoffDate = null,
    Object? pickupDate = null,
    Object? paymentMethod = null,
    Object? status = null,
    Object? paymentEvidence = null,
    Object? usedPoint = null,
    Object? earnedPoint = null,
    Object? totalPrice = null,
    Object? tip = null,
    Object? employee = freezed,
    Object? customer = freezed,
    Object? id = freezed,
    Object? carts = freezed,
  }) {
    return _then(_$TransactionImpl(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryId: null == deliveryId
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as int,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paidoffDate: null == paidoffDate
          ? _value.paidoffDate
          : paidoffDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pickupDate: null == pickupDate
          ? _value.pickupDate
          : pickupDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paymentEvidence: null == paymentEvidence
          ? _value.paymentEvidence
          : paymentEvidence // ignore: cast_nullable_to_non_nullable
              as String,
      usedPoint: null == usedPoint
          ? _value.usedPoint
          : usedPoint // ignore: cast_nullable_to_non_nullable
              as int,
      earnedPoint: null == earnedPoint
          ? _value.earnedPoint
          : earnedPoint // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      tip: null == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as int,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      carts: freezed == carts
          ? _value._carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<Cart>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionImpl implements _Transaction {
  const _$TransactionImpl(
      {@JsonKey(name: 'employee_id') required this.employeeId,
      @JsonKey(name: 'customer_id') required this.customerId,
      @JsonKey(name: 'delivery_id') required this.deliveryId,
      @JsonKey(name: 'order_date') required this.orderDate,
      @JsonKey(name: 'paidoff_date') required this.paidoffDate,
      @JsonKey(name: 'pickup_date') required this.pickupDate,
      @JsonKey(name: 'payment_method') required this.paymentMethod,
      required this.status,
      @JsonKey(name: 'payment_evidence') required this.paymentEvidence,
      @JsonKey(name: 'used_point') required this.usedPoint,
      @JsonKey(name: 'earned_point') required this.earnedPoint,
      @JsonKey(name: 'total_price') required this.totalPrice,
      required this.tip,
      this.employee,
      this.customer,
      this.id,
      final List<Cart>? carts})
      : _carts = carts;

  factory _$TransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionImplFromJson(json);

  @override
  @JsonKey(name: 'employee_id')
  final int employeeId;
  @override
  @JsonKey(name: 'customer_id')
  final int customerId;
  @override
  @JsonKey(name: 'delivery_id')
  final int deliveryId;
  @override
  @JsonKey(name: 'order_date')
  final DateTime orderDate;
  @override
  @JsonKey(name: 'paidoff_date')
  final DateTime paidoffDate;
  @override
  @JsonKey(name: 'pickup_date')
  final DateTime pickupDate;
  @override
  @JsonKey(name: 'payment_method')
  final String paymentMethod;
  @override
  final String status;
  @override
  @JsonKey(name: 'payment_evidence')
  final String paymentEvidence;
  @override
  @JsonKey(name: 'used_point')
  final int usedPoint;
  @override
  @JsonKey(name: 'earned_point')
  final int earnedPoint;
  @override
  @JsonKey(name: 'total_price')
  final int totalPrice;
  @override
  final int tip;
  @override
  final Employee? employee;
  @override
  final Customer? customer;
  @override
  final int? id;
  final List<Cart>? _carts;
  @override
  List<Cart>? get carts {
    final value = _carts;
    if (value == null) return null;
    if (_carts is EqualUnmodifiableListView) return _carts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Transaction(employeeId: $employeeId, customerId: $customerId, deliveryId: $deliveryId, orderDate: $orderDate, paidoffDate: $paidoffDate, pickupDate: $pickupDate, paymentMethod: $paymentMethod, status: $status, paymentEvidence: $paymentEvidence, usedPoint: $usedPoint, earnedPoint: $earnedPoint, totalPrice: $totalPrice, tip: $tip, employee: $employee, customer: $customer, id: $id, carts: $carts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionImpl &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.deliveryId, deliveryId) ||
                other.deliveryId == deliveryId) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.paidoffDate, paidoffDate) ||
                other.paidoffDate == paidoffDate) &&
            (identical(other.pickupDate, pickupDate) ||
                other.pickupDate == pickupDate) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentEvidence, paymentEvidence) ||
                other.paymentEvidence == paymentEvidence) &&
            (identical(other.usedPoint, usedPoint) ||
                other.usedPoint == usedPoint) &&
            (identical(other.earnedPoint, earnedPoint) ||
                other.earnedPoint == earnedPoint) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.tip, tip) || other.tip == tip) &&
            (identical(other.employee, employee) ||
                other.employee == employee) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._carts, _carts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      employeeId,
      customerId,
      deliveryId,
      orderDate,
      paidoffDate,
      pickupDate,
      paymentMethod,
      status,
      paymentEvidence,
      usedPoint,
      earnedPoint,
      totalPrice,
      tip,
      employee,
      customer,
      id,
      const DeepCollectionEquality().hash(_carts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      __$$TransactionImplCopyWithImpl<_$TransactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionImplToJson(
      this,
    );
  }
}

abstract class _Transaction implements Transaction {
  const factory _Transaction(
      {@JsonKey(name: 'employee_id') required final int employeeId,
      @JsonKey(name: 'customer_id') required final int customerId,
      @JsonKey(name: 'delivery_id') required final int deliveryId,
      @JsonKey(name: 'order_date') required final DateTime orderDate,
      @JsonKey(name: 'paidoff_date') required final DateTime paidoffDate,
      @JsonKey(name: 'pickup_date') required final DateTime pickupDate,
      @JsonKey(name: 'payment_method') required final String paymentMethod,
      required final String status,
      @JsonKey(name: 'payment_evidence') required final String paymentEvidence,
      @JsonKey(name: 'used_point') required final int usedPoint,
      @JsonKey(name: 'earned_point') required final int earnedPoint,
      @JsonKey(name: 'total_price') required final int totalPrice,
      required final int tip,
      final Employee? employee,
      final Customer? customer,
      final int? id,
      final List<Cart>? carts}) = _$TransactionImpl;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$TransactionImpl.fromJson;

  @override
  @JsonKey(name: 'employee_id')
  int get employeeId;
  @override
  @JsonKey(name: 'customer_id')
  int get customerId;
  @override
  @JsonKey(name: 'delivery_id')
  int get deliveryId;
  @override
  @JsonKey(name: 'order_date')
  DateTime get orderDate;
  @override
  @JsonKey(name: 'paidoff_date')
  DateTime get paidoffDate;
  @override
  @JsonKey(name: 'pickup_date')
  DateTime get pickupDate;
  @override
  @JsonKey(name: 'payment_method')
  String get paymentMethod;
  @override
  String get status;
  @override
  @JsonKey(name: 'payment_evidence')
  String get paymentEvidence;
  @override
  @JsonKey(name: 'used_point')
  int get usedPoint;
  @override
  @JsonKey(name: 'earned_point')
  int get earnedPoint;
  @override
  @JsonKey(name: 'total_price')
  int get totalPrice;
  @override
  int get tip;
  @override
  Employee? get employee;
  @override
  Customer? get customer;
  @override
  int? get id;
  @override
  List<Cart>? get carts;
  @override
  @JsonKey(ignore: true)
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
