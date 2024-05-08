// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as int,
      consignorId: json['consignor_id'] as int?,
      categoryId: json['category_id'] as int,
      name: json['product_name'] as String,
      readyStock: json['ready_stock'] as int,
      dailyStock: json['daily_stock'] as int,
      price: json['product_price'] as int,
      status: json['product_status'] as String,
      picture: json['product_picture'] as String,
      active: json['active'] as int,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('consignor_id', instance.consignorId);
  val['category_id'] = instance.categoryId;
  val['product_name'] = instance.name;
  val['ready_stock'] = instance.readyStock;
  val['daily_stock'] = instance.dailyStock;
  val['product_price'] = instance.price;
  val['product_status'] = instance.status;
  val['product_picture'] = instance.picture;
  val['active'] = instance.active;
  val['description'] = instance.description;
  return val;
}
