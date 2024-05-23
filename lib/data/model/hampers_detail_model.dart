import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:p3l_k3_mobile/data/model/product_model.dart';

part 'hampers_detail_model.freezed.dart';
part 'hampers_detail_model.g.dart';

@freezed
class HampersDetail with _$HampersDetail {
  const factory HampersDetail({
    required int id,
    @JsonKey(name: 'hampers_id') required int hampersId,
    @JsonKey(name: 'product_id') required int productId,
    required Product product,
  }) = _HampersDetail;

  factory HampersDetail.fromJson(Map<String, dynamic> json) =>
      _$HampersDetailFromJson(json);
}
