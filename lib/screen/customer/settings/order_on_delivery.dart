import 'package:auto_route/auto_route.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:p3l_k3_mobile/data/api/transaction_api.dart';
import 'package:p3l_k3_mobile/data/model/transaction_detail_model.dart';
import 'package:p3l_k3_mobile/data/model/transaction_model.dart';
import 'package:p3l_k3_mobile/logic/auth_logic.dart';
import 'package:p3l_k3_mobile/logic/transaction_logic.dart';
import 'package:toastification/toastification.dart';

@RoutePage()
class OrderOnDeliveryScreen extends ConsumerWidget {
  const OrderOnDeliveryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Transaction>?> transactions = ref.watch(transactionLogicProvider);
    final List<Transaction>? transactionOnDelivery =
        transactions.value?.where((Transaction transaction) => transaction.status == 'onDelivery').toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Order On Delivery'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: RefreshIndicator(
          onRefresh: () async {
            await ref.read(transactionLogicProvider.notifier).fetchAll('');
          },
          triggerMode: RefreshIndicatorTriggerMode.anywhere,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                  child: Lottie.asset('assets/anim/delivery.json'),
                ),
                Text(
                  'These are the order that are on delivery, please make sure to tap "Finish" after the order has been delivered.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const Gap(24),

                // contents
                if (transactions.isLoading)
                  const Center(child: CircularProgressIndicator())
                else
                  Column(
                    children: transactionOnDelivery?.map((Transaction transaction) {
                          return TransactionTile(transaction: transaction);
                        }).toList() ??
                        <Widget>[],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TransactionTile extends ConsumerWidget {
  const TransactionTile({required this.transaction, super.key});

  final Transaction transaction;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ExpandableController expandableController = ExpandableController();

    return Card(
      child: InkWell(
        onTap: expandableController.toggle,
        child: ExpandablePanel(
          controller: expandableController,
          collapsed: ListTile(
            title: Text(
              'Transaction Number: ${transaction.transactionNumber ?? 'No Transaction Number'}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(transaction.delivery?.recipientAddress ?? 'No Address'),
                const Gap(8),
                Text(
                  'Tap to see ordered products',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            trailing: FilledButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Finish Order'),
                      content: const Text('Are you sure you want to finish this order?'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () async {
                            try {
                              await finishOrder(
                                  ref.read(authLogicProvider).value?.accessToken ?? '', transaction.id ?? 0);
                              await ref.read(transactionLogicProvider.notifier).fetchAll('').then((onValue) {
                                Navigator.of(context).pop();
                                toastification.show(
                                  context: context,
                                  type: ToastificationType.success,
                                  style: ToastificationStyle.flat,
                                  title: const Text('Order finished'),
                                  description: const Text(
                                    'Thanks for ordering at Atma Kitchen ❤️.',
                                  ),
                                  alignment: Alignment.bottomCenter,
                                  autoCloseDuration: const Duration(seconds: 5),
                                  icon: const Icon(FontAwesomeIcons.faceSmileBeam),
                                  boxShadow: lowModeShadow,
                                  dragToClose: true,
                                );
                              });
                            } catch (e) {
                              toastification.show(
                                type: ToastificationType.error,
                                style: ToastificationStyle.flat,
                                title: const Text('Something went wrong'),
                                description: const Text(
                                  'We are really sorry for the inconvenience, please try again later.',
                                ),
                                alignment: Alignment.bottomCenter,
                                autoCloseDuration: const Duration(seconds: 5),
                                icon: const Icon(FontAwesomeIcons.faceSmileBeam),
                                boxShadow: lowModeShadow,
                                dragToClose: true,
                              );
                            }
                          },
                          child: const Text('Finish'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Finish'),
            ),
          ),
          expanded: ListTile(
            title: Text(
              'Transaction Number: ${transaction.transactionNumber ?? 'No Transaction Number'}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              children: <Widget>[
                Text(
                  transaction.delivery?.recipientAddress ?? 'No Address',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Gap(8),
                Column(
                  children: transaction.transactionDetails?.map((TransactionDetail? transactionDetail) {
                        return (transactionDetail?.product != null)
                            ? Card(
                                color: Theme.of(context).colorScheme.secondaryContainer,
                                child: ListTile(
                                  title: Text(transactionDetail?.product?.name ?? 'Unknown product'),
                                  subtitle: Text('Quantity: ${transactionDetail?.quantity}'),
                                ),
                              )
                            : Card(
                                color: Theme.of(context).colorScheme.secondaryContainer,
                                child: ListTile(
                                  title: Text(transactionDetail?.hampers?.name ?? 'Unknown hampers'),
                                  subtitle: Text('Quantity: ${transactionDetail?.quantity}'),
                                ),
                              );
                      }).toList() ??
                      <Widget>[],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
