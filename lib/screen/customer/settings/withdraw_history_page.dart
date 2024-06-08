import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:p3l_k3_mobile/data/model/balance_history_model.dart';
import 'package:p3l_k3_mobile/data/model/customer_model.dart';
import 'package:p3l_k3_mobile/logic/balance_logic.dart';
import 'package:p3l_k3_mobile/logic/customer_logic.dart';

@RoutePage()
class WithdrawHistoryScreen extends ConsumerWidget {
  const WithdrawHistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<Customer> customerLogic = ref.watch(customerLogicProvider);
    final AsyncValue<List<CustomerBalanceHistory>> balanceHistory = ref.watch(balanceLogicProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Withdraw History'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(balanceLogicProvider.notifier).refresh();
        },
        child: Center(
          child: customerLogic.isLoading
              ? const CircularProgressIndicator()
              : ListView.builder(
                  itemCount: balanceHistory.value?.length ?? 0,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text('Amount: Rp. ${balanceHistory.value?[index].nominalBalance}'),
                      subtitle: Text(
                        'Bank: ${balanceHistory.value?[index].bankName}, Account: ${balanceHistory.value?[index].accountNumber},'
                        ' Date: ${balanceHistory.value?[index].date}',
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
