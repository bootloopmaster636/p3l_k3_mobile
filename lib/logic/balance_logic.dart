import 'package:p3l_k3_mobile/data/api/balance_api.dart';
import 'package:p3l_k3_mobile/data/model/balance_history_model.dart';
import 'package:p3l_k3_mobile/logic/auth_logic.dart';
import 'package:p3l_k3_mobile/logic/customer_logic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'balance_logic.g.dart';

@riverpod
class BalanceLogic extends _$BalanceLogic {
  @override
  Future<List<CustomerBalanceHistory>> build() async {
      final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
      final int customerId = ref.read(customerLogicProvider).value?.id ?? 0;
      return fetchWithdrawHistoryFromApi(customerId, token);
  }

  Future<void> refresh() async {
    state = AsyncValue.loading();

    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
    final int customerId = ref.read(customerLogicProvider).value?.id ?? 0;
    final List<CustomerBalanceHistory> histories = await fetchWithdrawHistoryFromApi(customerId, token);
    state = AsyncValue.data(histories);
  }

  Future<void> withdrawBalance(int amount, String bankName, String accountNumber, String detailInformation) async {
    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
    final int customerId = ref.read(customerLogicProvider).value?.id ?? 0;
    await withdrawCustomerBalance(customerId, token, amount, bankName, accountNumber, detailInformation);
  }
}
