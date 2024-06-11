import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:p3l_k3_mobile/data/model/hampers_model.dart';
import 'package:p3l_k3_mobile/data/model/product_model.dart';

part 'transaction_detail_model.freezed.dart';
part 'transaction_detail_model.g.dart';

@freezed
class TransactionDetail with _$TransactionDetail {
  const factory TransactionDetail({
    int? id,
    @JsonKey(name: 'transaction_id') required int transactionId,
    @JsonKey(name: 'product_id') required int? productId,
    @JsonKey(name: 'hampers_id') required int? hampersId,
    required int quantity,
    required int price,
    @JsonKey(name: 'total_price') required int totalPrice,
    Product? product,
    Hampers? hampers,
  }) = _TransactionDetail;

  factory TransactionDetail.fromJson(Map<String, dynamic> json) => _$TransactionDetailFromJson(json);
}
