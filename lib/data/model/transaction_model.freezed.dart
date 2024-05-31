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
  @JsonKey(name: 'transaction_number')
  String? get transactionNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_id')
  int? get employeeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  int get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_id')
  int? get deliveryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_date')
  DateTime? get orderDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'paidoff_date')
  DateTime? get paidoffDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_date')
  DateTime? get pickupDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  String? get paymentMethod => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_evidence')
  String? get paymentEvidence => throw _privateConstructorUsedError;
  @JsonKey(name: 'used_point')
  int? get usedPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'earned_point')
  int? get earnedPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_point')
  int? get currentPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_amount')
  int? get paymentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_price')
  int? get totalPrice => throw _privateConstructorUsedError;
  int get tip => throw _privateConstructorUsedError;
  Employee? get employee => throw _privateConstructorUsedError;
  Customer? get customer => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_details')
  List<TransactionDetail?>? get transactionDetails =>
      throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'transaction_number') String? transactionNumber,
      @JsonKey(name: 'employee_id') int? employeeId,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'delivery_id') int? deliveryId,
      @JsonKey(name: 'order_date') DateTime? orderDate,
      @JsonKey(name: 'paidoff_date') DateTime? paidoffDate,
      @JsonKey(name: 'pickup_date') DateTime? pickupDate,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      String status,
      @JsonKey(name: 'payment_evidence') String? paymentEvidence,
      @JsonKey(name: 'used_point') int? usedPoint,
      @JsonKey(name: 'earned_point') int? earnedPoint,
      @JsonKey(name: 'current_point') int? currentPoint,
      @JsonKey(name: 'payment_amount') int? paymentAmount,
      @JsonKey(name: 'total_price') int? totalPrice,
      int tip,
      Employee? employee,
      Customer? customer,
      int? id,
      @JsonKey(name: 'transaction_details')
      List<TransactionDetail?>? transactionDetails});

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
    Object? transactionNumber = freezed,
    Object? employeeId = freezed,
    Object? customerId = null,
    Object? deliveryId = freezed,
    Object? orderDate = freezed,
    Object? paidoffDate = freezed,
    Object? pickupDate = freezed,
    Object? paymentMethod = freezed,
    Object? status = null,
    Object? paymentEvidence = freezed,
    Object? usedPoint = freezed,
    Object? earnedPoint = freezed,
    Object? currentPoint = freezed,
    Object? paymentAmount = freezed,
    Object? totalPrice = freezed,
    Object? tip = null,
    Object? employee = freezed,
    Object? customer = freezed,
    Object? id = freezed,
    Object? transactionDetails = freezed,
  }) {
    return _then(_value.copyWith(
      transactionNumber: freezed == transactionNumber
          ? _value.transactionNumber
          : transactionNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryId: freezed == deliveryId
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paidoffDate: freezed == paidoffDate
          ? _value.paidoffDate
          : paidoffDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pickupDate: freezed == pickupDate
          ? _value.pickupDate
          : pickupDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paymentEvidence: freezed == paymentEvidence
          ? _value.paymentEvidence
          : paymentEvidence // ignore: cast_nullable_to_non_nullable
              as String?,
      usedPoint: freezed == usedPoint
          ? _value.usedPoint
          : usedPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      earnedPoint: freezed == earnedPoint
          ? _value.earnedPoint
          : earnedPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPoint: freezed == currentPoint
          ? _value.currentPoint
          : currentPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentAmount: freezed == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
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
      transactionDetails: freezed == transactionDetails
          ? _value.transactionDetails
          : transactionDetails // ignore: cast_nullable_to_non_nullable
              as List<TransactionDetail?>?,
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
      {@JsonKey(name: 'transaction_number') String? transactionNumber,
      @JsonKey(name: 'employee_id') int? employeeId,
      @JsonKey(name: 'customer_id') int customerId,
      @JsonKey(name: 'delivery_id') int? deliveryId,
      @JsonKey(name: 'order_date') DateTime? orderDate,
      @JsonKey(name: 'paidoff_date') DateTime? paidoffDate,
      @JsonKey(name: 'pickup_date') DateTime? pickupDate,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      String status,
      @JsonKey(name: 'payment_evidence') String? paymentEvidence,
      @JsonKey(name: 'used_point') int? usedPoint,
      @JsonKey(name: 'earned_point') int? earnedPoint,
      @JsonKey(name: 'current_point') int? currentPoint,
      @JsonKey(name: 'payment_amount') int? paymentAmount,
      @JsonKey(name: 'total_price') int? totalPrice,
      int tip,
      Employee? employee,
      Customer? customer,
      int? id,
      @JsonKey(name: 'transaction_details')
      List<TransactionDetail?>? transactionDetails});

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
    Object? transactionNumber = freezed,
    Object? employeeId = freezed,
    Object? customerId = null,
    Object? deliveryId = freezed,
    Object? orderDate = freezed,
    Object? paidoffDate = freezed,
    Object? pickupDate = freezed,
    Object? paymentMethod = freezed,
    Object? status = null,
    Object? paymentEvidence = freezed,
    Object? usedPoint = freezed,
    Object? earnedPoint = freezed,
    Object? currentPoint = freezed,
    Object? paymentAmount = freezed,
    Object? totalPrice = freezed,
    Object? tip = null,
    Object? employee = freezed,
    Object? customer = freezed,
    Object? id = freezed,
    Object? transactionDetails = freezed,
  }) {
    return _then(_$TransactionImpl(
      transactionNumber: freezed == transactionNumber
          ? _value.transactionNumber
          : transactionNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryId: freezed == deliveryId
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paidoffDate: freezed == paidoffDate
          ? _value.paidoffDate
          : paidoffDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pickupDate: freezed == pickupDate
          ? _value.pickupDate
          : pickupDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paymentEvidence: freezed == paymentEvidence
          ? _value.paymentEvidence
          : paymentEvidence // ignore: cast_nullable_to_non_nullable
              as String?,
      usedPoint: freezed == usedPoint
          ? _value.usedPoint
          : usedPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      earnedPoint: freezed == earnedPoint
          ? _value.earnedPoint
          : earnedPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPoint: freezed == currentPoint
          ? _value.currentPoint
          : currentPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentAmount: freezed == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
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
      transactionDetails: freezed == transactionDetails
          ? _value._transactionDetails
          : transactionDetails // ignore: cast_nullable_to_non_nullable
              as List<TransactionDetail?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionImpl implements _Transaction {
  const _$TransactionImpl(
      {@JsonKey(name: 'transaction_number') required this.transactionNumber,
      @JsonKey(name: 'employee_id') required this.employeeId,
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
      @JsonKey(name: 'current_point') required this.currentPoint,
      @JsonKey(name: 'payment_amount') required this.paymentAmount,
      @JsonKey(name: 'total_price') required this.totalPrice,
      required this.tip,
      this.employee,
      this.customer,
      this.id,
      @JsonKey(name: 'transaction_details')
      final List<TransactionDetail?>? transactionDetails})
      : _transactionDetails = transactionDetails;

  factory _$TransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionImplFromJson(json);

  @override
  @JsonKey(name: 'transaction_number')
  final String? transactionNumber;
  @override
  @JsonKey(name: 'employee_id')
  final int? employeeId;
  @override
  @JsonKey(name: 'customer_id')
  final int customerId;
  @override
  @JsonKey(name: 'delivery_id')
  final int? deliveryId;
  @override
  @JsonKey(name: 'order_date')
  final DateTime? orderDate;
  @override
  @JsonKey(name: 'paidoff_date')
  final DateTime? paidoffDate;
  @override
  @JsonKey(name: 'pickup_date')
  final DateTime? pickupDate;
  @override
  @JsonKey(name: 'payment_method')
  final String? paymentMethod;
  @override
  final String status;
  @override
  @JsonKey(name: 'payment_evidence')
  final String? paymentEvidence;
  @override
  @JsonKey(name: 'used_point')
  final int? usedPoint;
  @override
  @JsonKey(name: 'earned_point')
  final int? earnedPoint;
  @override
  @JsonKey(name: 'current_point')
  final int? currentPoint;
  @override
  @JsonKey(name: 'payment_amount')
  final int? paymentAmount;
  @override
  @JsonKey(name: 'total_price')
  final int? totalPrice;
  @override
  final int tip;
  @override
  final Employee? employee;
  @override
  final Customer? customer;
  @override
  final int? id;
  final List<TransactionDetail?>? _transactionDetails;
  @override
  @JsonKey(name: 'transaction_details')
  List<TransactionDetail?>? get transactionDetails {
    final value = _transactionDetails;
    if (value == null) return null;
    if (_transactionDetails is EqualUnmodifiableListView)
      return _transactionDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Transaction(transactionNumber: $transactionNumber, employeeId: $employeeId, customerId: $customerId, deliveryId: $deliveryId, orderDate: $orderDate, paidoffDate: $paidoffDate, pickupDate: $pickupDate, paymentMethod: $paymentMethod, status: $status, paymentEvidence: $paymentEvidence, usedPoint: $usedPoint, earnedPoint: $earnedPoint, currentPoint: $currentPoint, paymentAmount: $paymentAmount, totalPrice: $totalPrice, tip: $tip, employee: $employee, customer: $customer, id: $id, transactionDetails: $transactionDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionImpl &&
            (identical(other.transactionNumber, transactionNumber) ||
                other.transactionNumber == transactionNumber) &&
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
            (identical(other.currentPoint, currentPoint) ||
                other.currentPoint == currentPoint) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.tip, tip) || other.tip == tip) &&
            (identical(other.employee, employee) ||
                other.employee == employee) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._transactionDetails, _transactionDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        transactionNumber,
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
        currentPoint,
        paymentAmount,
        totalPrice,
        tip,
        employee,
        customer,
        id,
        const DeepCollectionEquality().hash(_transactionDetails)
      ]);

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
      {@JsonKey(name: 'transaction_number')
      required final String? transactionNumber,
      @JsonKey(name: 'employee_id') required final int? employeeId,
      @JsonKey(name: 'customer_id') required final int customerId,
      @JsonKey(name: 'delivery_id') required final int? deliveryId,
      @JsonKey(name: 'order_date') required final DateTime? orderDate,
      @JsonKey(name: 'paidoff_date') required final DateTime? paidoffDate,
      @JsonKey(name: 'pickup_date') required final DateTime? pickupDate,
      @JsonKey(name: 'payment_method') required final String? paymentMethod,
      required final String status,
      @JsonKey(name: 'payment_evidence') required final String? paymentEvidence,
      @JsonKey(name: 'used_point') required final int? usedPoint,
      @JsonKey(name: 'earned_point') required final int? earnedPoint,
      @JsonKey(name: 'current_point') required final int? currentPoint,
      @JsonKey(name: 'payment_amount') required final int? paymentAmount,
      @JsonKey(name: 'total_price') required final int? totalPrice,
      required final int tip,
      final Employee? employee,
      final Customer? customer,
      final int? id,
      @JsonKey(name: 'transaction_details')
      final List<TransactionDetail?>? transactionDetails}) = _$TransactionImpl;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$TransactionImpl.fromJson;

  @override
  @JsonKey(name: 'transaction_number')
  String? get transactionNumber;
  @override
  @JsonKey(name: 'employee_id')
  int? get employeeId;
  @override
  @JsonKey(name: 'customer_id')
  int get customerId;
  @override
  @JsonKey(name: 'delivery_id')
  int? get deliveryId;
  @override
  @JsonKey(name: 'order_date')
  DateTime? get orderDate;
  @override
  @JsonKey(name: 'paidoff_date')
  DateTime? get paidoffDate;
  @override
  @JsonKey(name: 'pickup_date')
  DateTime? get pickupDate;
  @override
  @JsonKey(name: 'payment_method')
  String? get paymentMethod;
  @override
  String get status;
  @override
  @JsonKey(name: 'payment_evidence')
  String? get paymentEvidence;
  @override
  @JsonKey(name: 'used_point')
  int? get usedPoint;
  @override
  @JsonKey(name: 'earned_point')
  int? get earnedPoint;
  @override
  @JsonKey(name: 'current_point')
  int? get currentPoint;
  @override
  @JsonKey(name: 'payment_amount')
  int? get paymentAmount;
  @override
  @JsonKey(name: 'total_price')
  int? get totalPrice;
  @override
  int get tip;
  @override
  Employee? get employee;
  @override
  Customer? get customer;
  @override
  int? get id;
  @override
  @JsonKey(name: 'transaction_details')
  List<TransactionDetail?>? get transactionDetails;
  @override
  @JsonKey(ignore: true)
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
