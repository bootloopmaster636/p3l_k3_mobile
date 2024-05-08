import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:p3l_k3_mobile/data/model/cart_model.dart';
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
      body: const Center(
        child: OrderHistoryContent(),
      ),
    );
  }
}

class OrderHistoryContent extends ConsumerWidget {
  const OrderHistoryContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Transaction>> transactions =
        ref.watch(transactionLogicProvider);

    return transactions.isLoading
        ? const CircularProgressIndicator()
        : Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: transactions.value?.map((Transaction transaction) {
                    return OrderHistoryItem(transaction: transaction);
                  }).toList() ??
                  <Widget>[],
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Ordered on ${convertDateTimeToDMY(transaction.orderDate)}',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              'Transaction ID: ${transaction.id}',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const Gap(16),
            OrderList(carts: transaction.carts ?? <Cart>[]),
          ],
        ),
      ),
    );
  }
}

class OrderList extends StatelessWidget {
  const OrderList({required this.carts, super.key});
  final List<Cart> carts;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: carts.map((Cart cart) {
      return ListTile(
        title: Text(cart.product?.name ?? 'Unknown product'),
        subtitle: Text('Quantity: ${cart.quantity}'),
        trailing: Text('Rp ${cart.product?.price ?? 0 * cart.quantity}'),
      );
    }).toList());
  }
}
