// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartImpl _$$CartImplFromJson(Map<String, dynamic> json) => _$CartImpl(
      id: json['id'] as int?,
      transactionId: json['transaction_id'] as int,
      productId: json['product_id'] as int?,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      hampersId: json['hampers_id'] as int?,
      quantity: json['quantity'] as int,
      price: json['price'] as int,
      totalPrice: json['total_price'] as int,
    );

Map<String, dynamic> _$$CartImplToJson(_$CartImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['transaction_id'] = instance.transactionId;
  writeNotNull('product_id', instance.productId);
  writeNotNull('product', instance.product?.toJson());
  writeNotNull('hampers_id', instance.hampersId);
  val['quantity'] = instance.quantity;
  val['price'] = instance.price;
  val['total_price'] = instance.totalPrice;
  return val;
}
