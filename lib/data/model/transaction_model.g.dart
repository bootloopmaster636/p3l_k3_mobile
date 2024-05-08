// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      employeeId: json['employee_id'] as int,
      customerId: json['customer_id'] as int,
      deliveryId: json['delivery_id'] as int,
      orderDate: DateTime.parse(json['order_date'] as String),
      paidoffDate: DateTime.parse(json['paidoff_date'] as String),
      pickupDate: DateTime.parse(json['pickup_date'] as String),
      paymentMethod: json['payment_method'] as String,
      status: json['status'] as String,
      paymentEvidence: json['payment_evidence'] as String,
      usedPoint: json['used_point'] as int,
      earnedPoint: json['earned_point'] as int,
      totalPrice: json['total_price'] as int,
      tip: json['tip'] as int,
      employee: json['employee'] == null
          ? null
          : Employee.fromJson(json['employee'] as Map<String, dynamic>),
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      id: json['id'] as int?,
      carts: (json['carts'] as List<dynamic>?)
          ?.map((e) => Cart.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) {
  final val = <String, dynamic>{
    'employee_id': instance.employeeId,
    'customer_id': instance.customerId,
    'delivery_id': instance.deliveryId,
    'order_date': instance.orderDate.toIso8601String(),
    'paidoff_date': instance.paidoffDate.toIso8601String(),
    'pickup_date': instance.pickupDate.toIso8601String(),
    'payment_method': instance.paymentMethod,
    'status': instance.status,
    'payment_evidence': instance.paymentEvidence,
    'used_point': instance.usedPoint,
    'earned_point': instance.earnedPoint,
    'total_price': instance.totalPrice,
    'tip': instance.tip,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('employee', instance.employee?.toJson());
  writeNotNull('customer', instance.customer?.toJson());
  writeNotNull('id', instance.id);
  writeNotNull('carts', instance.carts?.map((e) => e.toJson()).toList());
  return val;
}
