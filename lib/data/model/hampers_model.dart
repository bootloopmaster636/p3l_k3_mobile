import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:p3l_k3_mobile/data/model/hampers_detail_model.dart';

part 'hampers_model.freezed.dart';
part 'hampers_model.g.dart';

@freezed
class Hampers with _$Hampers {
  const factory Hampers({
    required int id,
    @JsonKey(name: 'hampers_name') required String name,
    @JsonKey(name: 'hampers_price') required int price,
    required int quantity,
    @JsonKey(name: 'hampers_picture') required String picture,
    required int active,
    @JsonKey(name: 'hampers_detail') required List<HampersDetail> hampersDetail,
  }) = _Hampers;

  factory Hampers.fromJson(Map<String, dynamic> json) => _$HampersFromJson(json);
}
