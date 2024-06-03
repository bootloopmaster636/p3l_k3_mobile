import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_model.freezed.dart';
part 'delivery_model.g.dart';

@freezed
class Delivery with _$Delivery {
  const factory Delivery({
    required int id,
    @JsonKey(name: 'delivery_method') required String? deliveryMethod,
    required int? distance,
    @JsonKey(name: 'shipping_cost') required int? shippingCost,
    @JsonKey(name: 'recipient_address') required String? recipientAddress,
  }) = _Delivery;

  factory Delivery.fromJson(Map<String, dynamic> json) => _$DeliveryFromJson(json);
}
