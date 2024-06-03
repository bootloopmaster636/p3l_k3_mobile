// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num).toInt(),
      consignorId: (json['consignor_id'] as num?)?.toInt(),
      categoryId: (json['category_id'] as num).toInt(),
      name: json['product_name'] as String,
      readyStock: (json['ready_stock'] as num).toInt(),
      dailyStock: (json['daily_stock'] as num).toInt(),
      price: (json['product_price'] as num).toInt(),
      status: json['product_status'] as String,
      picture: json['product_picture'] as String,
      active: (json['active'] as num).toInt(),
      description: json['description'] as String,
      category: json['categories'] == null
          ? null
          : ProductCategory.fromJson(
              json['categories'] as Map<String, dynamic>),
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
  writeNotNull('categories', instance.category?.toJson());
  return val;
}
