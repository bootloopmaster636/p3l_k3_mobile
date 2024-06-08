import 'package:p3l_k3_mobile/data/api/customer_api.dart';
import 'package:p3l_k3_mobile/data/model/customer_model.dart';
import 'package:p3l_k3_mobile/data/model/balance_history_model.dart';
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

  Future<int> getBalance() async {
    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
    final int customerId = ref.read(customerLogicProvider).value?.id ?? 0;
    return getCustomerBalance(customerId, token);
  }

  Future<void> withdrawBalance(int amount, String bankName, String accountNumber, String detailInformation) async {
    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
    final int customerId = ref.read(customerLogicProvider).value?.id ?? 0;
    await withdrawCustomerBalance(customerId, token, amount, bankName, accountNumber, detailInformation);
  }

  Future<List<CustomerBalanceHistory>> fetchWithdrawHistory() async {
    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
    final int customerId = ref.read(customerLogicProvider).value?.id ?? 0;
    return fetchWithdrawHistoryFromApi(customerId, token);
  }
}
