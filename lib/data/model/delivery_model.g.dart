// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryImpl _$$DeliveryImplFromJson(Map<String, dynamic> json) =>
    _$DeliveryImpl(
      id: (json['id'] as num).toInt(),
      deliveryMethod: json['delivery_method'] as String?,
      distance: (json['distance'] as num?)?.toInt(),
      shippingCost: (json['shipping_cost'] as num?)?.toInt(),
      recipientAddress: json['recipient_address'] as String?,
    );

Map<String, dynamic> _$$DeliveryImplToJson(_$DeliveryImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('delivery_method', instance.deliveryMethod);
  writeNotNull('distance', instance.distance);
  writeNotNull('shipping_cost', instance.shippingCost);
  writeNotNull('recipient_address', instance.recipientAddress);
  return val;
}
