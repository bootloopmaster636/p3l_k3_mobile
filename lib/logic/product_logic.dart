import 'package:p3l_k3_mobile/data/api/product_api.dart';
import 'package:p3l_k3_mobile/data/model/product_model.dart';
import 'package:p3l_k3_mobile/logic/auth_logic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_logic.g.dart';

@riverpod
class ProductLogic extends _$ProductLogic {
  @override
  Future<List<Product>> build() async {
    state = const AsyncValue.loading();
    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
    return getProducts(token);
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
    final List<Product> products = await getProducts(token);
    state = AsyncValue.data(products);
  }
}

Product getProductById(int id, List<Product> products) {
  return products.firstWhere((Product e) => e.id == id);
}
