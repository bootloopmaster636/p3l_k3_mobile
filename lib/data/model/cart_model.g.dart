// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartImpl _$$CartImplFromJson(Map<String, dynamic> json) => _$CartImpl(
      transactionId: json['transaction_id'] as int,
      productId: json['product_id'] as int?,
      hampersId: json['hampers_id'] as int?,
      quantity: json['quantity'] as int,
      price: json['price'] as int,
      totalPrice: json['total_price'] as int,
      id: json['id'] as int?,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CartImplToJson(_$CartImpl instance) {
  final val = <String, dynamic>{
    'transaction_id': instance.transactionId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product_id', instance.productId);
  writeNotNull('hampers_id', instance.hampersId);
  val['quantity'] = instance.quantity;
  val['price'] = instance.price;
  val['total_price'] = instance.totalPrice;
  writeNotNull('id', instance.id);
  writeNotNull('product', instance.product?.toJson());
  return val;
}
