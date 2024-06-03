// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionDetailImpl _$$TransactionDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDetailImpl(
      id: (json['id'] as num?)?.toInt(),
      transactionId: (json['transaction_id'] as num).toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      hampersId: (json['hampers_id'] as num?)?.toInt(),
      quantity: (json['quantity'] as num).toInt(),
      price: (json['price'] as num).toInt(),
      totalPrice: (json['total_price'] as num).toInt(),
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      hampers: json['hampers'] == null
          ? null
          : Hampers.fromJson(json['hampers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TransactionDetailImplToJson(
    _$TransactionDetailImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['transaction_id'] = instance.transactionId;
  writeNotNull('product_id', instance.productId);
  writeNotNull('hampers_id', instance.hampersId);
  val['quantity'] = instance.quantity;
  val['price'] = instance.price;
  val['total_price'] = instance.totalPrice;
  writeNotNull('product', instance.product?.toJson());
  writeNotNull('hampers', instance.hampers?.toJson());
  return val;
}
