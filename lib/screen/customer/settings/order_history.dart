import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:p3l_k3_mobile/data/model/transaction_detail_model.dart';
import 'package:p3l_k3_mobile/data/model/transaction_model.dart';
import 'package:p3l_k3_mobile/logic/transaction_logic.dart';
import 'package:p3l_k3_mobile/utility.dart';

@RoutePage()
class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order History'),
      ),
      body: const OrderHistoryContent(),
    );
  }
}

class OrderHistoryContent extends HookConsumerWidget {
  const OrderHistoryContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Transaction>?> transactions = ref.watch(transactionLogicProvider);
    final TextEditingController search = useTextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: RefreshIndicator(
        onRefresh: () async {
          await ref.read(transactionLogicProvider.notifier).fetchAll('');
        },
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              const Gap(8),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: search,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
                        label: Text('Search items'),
                        hintText: 'Try searching for a product or hampers',
                      ),
                      onSubmitted: (String value) {
                        ref.read(transactionLogicProvider.notifier).fetchAll(value);
                      },
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      ref.read(transactionLogicProvider.notifier).fetchAll(search.text);
                    },
                    child: const Text('Search'),
                  ),
                ],
              ),
              const Gap(8),
              if (transactions.isLoading)
                const Center(
                  child: CircularProgressIndicator(),
                )
              else
                ...transactions.value?.map((Transaction? transaction) {
                      return OrderHistoryItem(transaction: transaction!);
                    }).toList() ??
                    <Widget>[],
            ],
          ),
        ),
      ),
    );
  }
}

class OrderHistoryItem extends StatelessWidget {
  const OrderHistoryItem({required this.transaction, super.key});

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Ordered on ${convertDateTimeToDMY(transaction.orderDate ?? DateTime(0))}',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              'Transaction ID: ${transaction.id}',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Chip(
              label: Text(transaction.status),
            ),
            OrderList(transactionDetails: transaction.transactionDetails ?? <TransactionDetail>[]),
          ],
        ),
      ),
    );
  }
}

class OrderList extends StatelessWidget {
  const OrderList({required this.transactionDetails, super.key});

  final List<TransactionDetail?> transactionDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactionDetails.map((TransactionDetail? transactionDetail) {
        return (transactionDetail?.product != null)
            ? ListTile(
                title: Text(transactionDetail?.product?.name ?? 'Unknown product'),
                subtitle: Text('Quantity: ${transactionDetail?.quantity}'),
                trailing: Text('Rp ${transactionDetail?.product?.price ?? 0 * transactionDetail!.quantity}'),
              )
            : ListTile(
                title: Text(transactionDetail?.hampers?.name ?? 'Unknown hampers'),
                subtitle: Text('Quantity: ${transactionDetail?.quantity}'),
                trailing: Text('Rp ${transactionDetail?.hampers?.price ?? 0 * transactionDetail!.quantity}'),
              );
      }).toList(),
    );
  }
}
