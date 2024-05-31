import 'package:p3l_k3_mobile/data/api/transaction_api.dart';
import 'package:p3l_k3_mobile/data/model/transaction_model.dart';
import 'package:p3l_k3_mobile/logic/auth_logic.dart';
import 'package:p3l_k3_mobile/logic/customer_logic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'transaction_logic.g.dart';

@riverpod
class TransactionLogic extends _$TransactionLogic {
  @override
  Future<List<Transaction>> build() async {
    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
    final int customerId = ref.read(customerLogicProvider).value?.id ?? 0;

    final List<Transaction> transactions = await getOrderHistory(token, customerId);

    // fill transactions with cart contents
    for (int i = 0; i < transactions.length; i++) {
      transactions[i] = transactions[i].copyWith(
        transactionDetails: await getCartContents(token, transactions[i].id ?? 0),
      );
    }

    return transactions;
  }

  Future<void> fetchAll() async {
    final String token = ref.read(authLogicProvider).value?.accessToken ?? '';
    final int customerId = ref.read(customerLogicProvider).value?.id ?? 0;

    try {
      state = const AsyncLoading<List<Transaction>>();
      final List<Transaction> transactions = await getOrderHistory(token, customerId);

      // fill transactions with cart contents
      for (int i = 0; i < transactions.length; i++) {
        transactions[i] = transactions[i].copyWith(
          transactionDetails: await getCartContents(token, transactions[i].id ?? 0),
        );
      }

      state = AsyncData<List<Transaction>>(transactions);
    } catch (e) {
      state = AsyncError<List<Transaction>>(e, StackTrace.current);
      rethrow;
    }
  }
}
