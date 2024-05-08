import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:p3l_k3_mobile/data/model/cart_model.dart';
import 'package:p3l_k3_mobile/data/model/customer_model.dart';
import 'package:p3l_k3_mobile/data/model/employee_model.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    @JsonKey(name: 'employee_id') required int employeeId,
    @JsonKey(name: 'customer_id') required int customerId,
    @JsonKey(name: 'delivery_id') required int deliveryId,
    @JsonKey(name: 'order_date') required DateTime orderDate,
    @JsonKey(name: 'paidoff_date') required DateTime paidoffDate,
    @JsonKey(name: 'pickup_date') required DateTime pickupDate,
    @JsonKey(name: 'payment_method') required String paymentMethod,
    required String status,
    @JsonKey(name: 'payment_evidence') required String paymentEvidence,
    @JsonKey(name: 'used_point') required int usedPoint,
    @JsonKey(name: 'earned_point') required int earnedPoint,
    @JsonKey(name: 'total_price') required int totalPrice,
    required int tip,
    Employee? employee,
    Customer? customer,
    int? id,
    List<Cart>? carts,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}
