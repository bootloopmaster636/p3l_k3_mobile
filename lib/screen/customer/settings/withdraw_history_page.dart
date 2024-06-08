import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:p3l_k3_mobile/data/model/balance_history_model.dart';
import 'package:p3l_k3_mobile/logic/customer_logic.dart';

@RoutePage()
class WithdrawHistoryScreen extends ConsumerWidget {
  const WithdrawHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customerLogic = ref.watch(customerLogicProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Withdraw History'),
      ),
      body: customerLogic.when(
        data: (customer) {
          return FutureBuilder<List<CustomerBalanceHistory>>(
            future: ref.read(customerLogicProvider.notifier).fetchWithdrawHistory(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return const Center(child: Text('Error retrieving history'));
              } else {
                final histories = snapshot.data ?? [];
                return ListView.builder(
                  itemCount: histories.length,
                  itemBuilder: (context, index) {
                    final history = histories[index];
                    return ListTile(
                      title: Text('Amount: Rp. ${history.nominalBalance}'),
                      subtitle: Text(
                          'Bank: ${history.bankName}, Account: ${history.accountNumber}, Date: ${history.date}, Status: ${history.status}'),
                    );
                  },
                );
              }
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => const Center(child: Text('Error retrieving customer data')),
      ),
    );
  }
}
