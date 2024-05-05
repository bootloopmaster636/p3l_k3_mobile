import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:p3l_k3_mobile/data/model/user_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    @JsonKey(name: 'consignor_id') required int consignorId,
    @JsonKey(name: 'category_id') required int categoryId,
    @JsonKey(name: 'product_name') required String name,
    @JsonKey(name: 'ready_stock') required int readyStock,
    @JsonKey(name: 'daily_stock') required int dailyStock,
    @JsonKey(name: 'product_price') required int price,
    @JsonKey(name: 'product_status') required String status,
    @JsonKey(name: 'product_picture') required String picture,
    required bool active,
    required String description,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
