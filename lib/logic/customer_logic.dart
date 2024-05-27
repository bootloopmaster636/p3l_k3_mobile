import 'package:p3l_k3_mobile/data/api/customer_api.dart';
import 'package:p3l_k3_mobile/data/model/customer_model.dart';
import 'package:p3l_k3_mobile/logic/auth_logic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'customer_logic.g.dart';

@riverpod
class CustomerLogic extends _$CustomerLogic {
  @override
  Future<Customer> build() async {
    if (ref.read(authLogicProvider).value?.accessToken != 'guest') {
      final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
      return getCustomerData(token);
    } else {
      return makeGuestCustomer();
    }
  }
}
