// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      transactionNumber: json['transaction_number'] as String?,
      employeeId: json['employee_id'] as int?,
      customerId: json['customer_id'] as int,
      deliveryId: json['delivery_id'] as int?,
      orderDate: json['order_date'] == null
          ? null
          : DateTime.parse(json['order_date'] as String),
      paidoffDate: json['paidoff_date'] == null
          ? null
          : DateTime.parse(json['paidoff_date'] as String),
      pickupDate: json['pickup_date'] == null
          ? null
          : DateTime.parse(json['pickup_date'] as String),
      paymentMethod: json['payment_method'] as String?,
      status: json['status'] as String,
      paymentEvidence: json['payment_evidence'] as String?,
      usedPoint: json['used_point'] as int?,
      earnedPoint: json['earned_point'] as int?,
      currentPoint: json['current_point'] as int?,
      paymentAmount: json['payment_amount'] as int?,
      totalPrice: json['total_price'] as int?,
      tip: json['tip'] as int,
      employee: json['employee'] == null
          ? null
          : Employee.fromJson(json['employee'] as Map<String, dynamic>),
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      delivery: json['delivery'] == null
          ? null
          : Delivery.fromJson(json['delivery'] as Map<String, dynamic>),
      id: json['id'] as int?,
      transactionDetails: (json['transaction_details'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : TransactionDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transaction_number', instance.transactionNumber);
  writeNotNull('employee_id', instance.employeeId);
  val['customer_id'] = instance.customerId;
  writeNotNull('delivery_id', instance.deliveryId);
  writeNotNull('order_date', instance.orderDate?.toIso8601String());
  writeNotNull('paidoff_date', instance.paidoffDate?.toIso8601String());
  writeNotNull('pickup_date', instance.pickupDate?.toIso8601String());
  writeNotNull('payment_method', instance.paymentMethod);
  val['status'] = instance.status;
  writeNotNull('payment_evidence', instance.paymentEvidence);
  writeNotNull('used_point', instance.usedPoint);
  writeNotNull('earned_point', instance.earnedPoint);
  writeNotNull('current_point', instance.currentPoint);
  writeNotNull('payment_amount', instance.paymentAmount);
  writeNotNull('total_price', instance.totalPrice);
  val['tip'] = instance.tip;
  writeNotNull('employee', instance.employee?.toJson());
  writeNotNull('customer', instance.customer?.toJson());
  writeNotNull('delivery', instance.delivery?.toJson());
  writeNotNull('id', instance.id);
  writeNotNull('transaction_details',
      instance.transactionDetails?.map((e) => e?.toJson()).toList());
  return val;
}
