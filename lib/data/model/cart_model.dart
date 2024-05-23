import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:p3l_k3_mobile/data/model/product_model.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class Cart with _$Cart {
  const factory Cart({
    @JsonKey(name: 'transaction_id') required int transactionId, @JsonKey(name: 'product_id') required int? productId, @JsonKey(name: 'hampers_id') required int? hampersId, // Hampers? hampers;
    required int quantity, required int price, @JsonKey(name: 'total_price') required int totalPrice, int? id,
    Product? product,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
}
