import 'package:p3l_k3_mobile/data/api/customer_api.dart';
import 'package:p3l_k3_mobile/data/model/customer_model.dart';
import 'package:p3l_k3_mobile/logic/auth_logic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'customer_logic.g.dart';

@riverpod
class CustomerLogic extends _$CustomerLogic {
  @override
  Future<Customer> build() {
    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
    return getCustomerData(token);
  }

  // Future<void> fetch() async {
  //   state = const AsyncLoading<Customer>();
  //   final String token = ref.read(authLogicProvider).value?.accessToken ?? '';

  //   try {
  //     final Customer customer = await getCustomerData(token);
  //     state = AsyncData<Customer>(customer);
  //   } catch (e) {
  //     state = AsyncError<Customer>(e, StackTrace.current);
  //     rethrow;
  //   }
  // }
}
