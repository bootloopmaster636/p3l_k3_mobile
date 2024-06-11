import 'package:p3l_k3_mobile/data/api/balance_api.dart';
import 'package:p3l_k3_mobile/data/api/customer_api.dart';
import 'package:p3l_k3_mobile/data/model/balance_history_model.dart';
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

  Future<void> refresh() async {
    state = const AsyncValue.loading();

    if (ref.read(authLogicProvider).value?.accessToken != 'guest') {
      final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
      final Customer customer = await getCustomerData(token);
      state = AsyncValue.data(customer);
    } else {
      final Customer customer = makeGuestCustomer();
      state = AsyncValue.data(customer);
    }
  }
}
