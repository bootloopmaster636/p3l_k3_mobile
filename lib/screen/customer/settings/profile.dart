import 'package:auto_route/auto_route.dart';
import 'package:el_tooltip/el_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:p3l_k3_mobile/data/model/customer_model.dart';
import 'package:p3l_k3_mobile/logic/customer_logic.dart';
import 'package:p3l_k3_mobile/router.dart';
import 'package:p3l_k3_mobile/data/model/balance_history_model.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 400,
            automaticallyImplyLeading: false,
            leading: Padding(
              padding: const EdgeInsets.only(left: 4),
              child: IconButton(
                onPressed: () {
                  context.router.navigate(const CustomerHomeRoute());
                },
                icon: const Icon(Icons.arrow_back),
              ),
            ),
            flexibleSpace: const FlexibleSpaceBar(
              background: Header(),
            ),
          ),
          const ProfileSettingsContent(),
        ],
      ),
    );
  }
}

class ProfileSettingsContent extends ConsumerWidget {
  const ProfileSettingsContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Profile Settings',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Change your profile data here',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const Gap(8),
            ListTile(
              title: Text(
                'Change personal information',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              leading: const Icon(
                Icons.person_outline_outlined,
                size: 24,
              ),
              onTap: () {
                context.router.push(const EditProfileRoute());
              },
            ),
            ListTile(
              title: Text(
                'Change password',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              leading: const Icon(
                Icons.vpn_key_outlined,
                size: 20,
              ),
              onTap: () {
                context.router.push(const EditPasswordRoute());
              },
            ),
            ListTile(
              title: Text(
                'Add or modify delivery address',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              leading: const FaIcon(
                FontAwesomeIcons.truckFast,
                size: 18,
              ),
              onTap: () {
                context.router.push(const EditAddressRoute());
              },
            ),
            const Gap(24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Things you might looking for',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const Gap(8),
            ListTile(
              onTap: () {
                showBalanceDialog(context, ref);
              },
              title: Text(
                'Show balance',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              leading: const Icon(
                Icons.account_balance_wallet_outlined,
                size: 24,
              ),
            ),
            ListTile(
              onTap: () {
                showWithdrawDialog(context, ref);
              },
              title: Text(
                'Withdraw balance',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              leading: const Icon(
                Icons.payments_outlined,
                size: 24,
              ),
            ),
            // ListTile(
            //   onTap: () {
            //     context.router.push(const WithdrawHistoryRoute());
            //   },
            //   title: Text(
            //     'Withdraw history',
            //     style: Theme.of(context).textTheme.bodyMedium,
            //   ),
            //   leading: const Icon(
            //     Icons.history,
            //     size: 24,
            //   ),
            // ),
            const Gap(8),
            const SizedBox(
              height: 120,
            ),
          ],
        )
            .animate(delay: 600.ms)
            .slideY(
              begin: 1,
              end: 0,
              duration: 800.ms,
              curve: Curves.easeOutQuint,
            )
            .fadeIn(duration: 800.ms),
      ),
    );
  }

  void showBalanceDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Balance'),
          content: Consumer(builder: (context, ref, child) {
            final balanceFuture =
                ref.watch(customerLogicProvider.notifier).getBalance();
            return FutureBuilder<int>(
              future: balanceFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return const Text('Error retrieving balance');
                } else {
                  return Text('Your balance is: Rp. ${snapshot.data}');
                }
              },
            );
          }),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void showWithdrawDialog(BuildContext context, WidgetRef ref) {
    final TextEditingController amountController = TextEditingController();
    final TextEditingController bankNameController = TextEditingController();
    final TextEditingController accountNumberController =
        TextEditingController();
    final TextEditingController detailInformationController =
        TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Withdraw Balance'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                controller: amountController,
                decoration: const InputDecoration(labelText: 'Amount'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: bankNameController,
                decoration: const InputDecoration(labelText: 'Bank Name'),
              ),
              TextField(
                controller: accountNumberController,
                decoration: const InputDecoration(labelText: 'Account Number'),
              ),
              TextField(
                controller: detailInformationController,
                decoration:
                    const InputDecoration(labelText: 'Detail Information'),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () async {
                final int amount = int.parse(amountController.text);
                final String bankName = bankNameController.text;
                final String accountNumber = accountNumberController.text;
                final String detailInformation =
                    detailInformationController.text;

                await ref.read(customerLogicProvider.notifier).withdrawBalance(
                      amount,
                      bankName,
                      accountNumber,
                      detailInformation,
                    );

                Navigator.of(context).pop();
              },
              child: const Text('Withdraw'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}

class Header extends ConsumerWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<Customer> user = ref.watch(customerLogicProvider);

    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Image.asset(
          'assets/pictures/cakes-light.png',
          fit: BoxFit.cover,
          height: double.infinity,
        ).animate(delay: 400.ms).fadeIn(duration: 500.ms).slideY(
              begin: 1,
              end: 0,
              duration: 1000.ms,
              curve: Curves.easeOutExpo,
            ),
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.yellow.withOpacity(0.2),
                Colors.lime.withOpacity(0.2),
              ],
            ),
          ),
        ).animate(delay: 400.ms).fadeIn(),
        Column(
          children: <Widget>[
            const Gap(84),
            SizedBox(
              width: 128,
              height: 128,
              child: CircleAvatar(
                backgroundColor:
                    Theme.of(context).colorScheme.tertiaryContainer,
                foregroundImage: NetworkImage(
                  'https://api.dicebear.com/8.x/adventurer/png?seed=${user.value?.user?.fullName ?? 'Unknown'}',
                ),
              ).animate(delay: 400.ms).rotate(
                    begin: 1,
                    end: 0,
                    duration: 600.ms,
                    curve: Curves.easeOutBack,
                  ),
            )
                .animate(delay: 400.ms)
                .slideY(
                  begin: 2,
                  end: 0,
                  duration: 600.ms,
                  curve: Curves.easeOutBack,
                )
                .fadeIn(),
            const Gap(8),
            Text(
              user.value?.user?.fullName ?? 'Unknown',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            )
                .animate(delay: 1000.ms)
                .slideY(
                  begin: -1,
                  end: 0,
                  duration: 500.ms,
                  curve: Curves.easeOutExpo,
                )
                .fadeIn(),
            const Gap(4),
            Text(
              user.value?.user?.email ?? 'no@one.com',
              style: Theme.of(context).textTheme.titleMedium,
            )
                .animate(delay: 1200.ms)
                .slideY(
                  begin: -1,
                  end: 0,
                  duration: 500.ms,
                  curve: Curves.easeOutExpo,
                )
                .fadeIn(),
            const Gap(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const FaIcon(
                  FontAwesomeIcons.coins,
                  size: 24,
                ),
                const Gap(8),
                Text(
                  '${user.value?.point} point',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const Gap(4),
                const ElTooltip(
                  position: ElTooltipPosition.bottomCenter,
                  appearAnimationDuration: Duration(milliseconds: 100),
                  disappearAnimationDuration: Duration(milliseconds: 100),
                  modalConfiguration: ModalConfiguration(opacity: 0.2),
                  content: Text(
                      'This is the bonus coins you get from ordering, each coin worth Rp. 100.\n\n'
                      'You can use it for discount at your next order.'),
                  child: Icon(
                    Icons.help_outline_outlined,
                    size: 16,
                  ),
                ),
                const Gap(32),
                const Icon(
                  Icons.payments_outlined,
                  size: 24,
                ),
                const Gap(8),
                Text(
                  'Rp. ${user.value?.nominalBalance}',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const Gap(4),
                const ElTooltip(
                  position: ElTooltipPosition.bottomEnd,
                  appearAnimationDuration: Duration(milliseconds: 100),
                  disappearAnimationDuration: Duration(milliseconds: 100),
                  modalConfiguration: ModalConfiguration(opacity: 0.2),
                  content: Text(
                      'Money will be refunded to this account when you paid but the order is cancelled.\n\n'
                      'You can transfer it to your bank account using "Transfer Balance" menu below.'),
                  child: Icon(
                    Icons.help_outline_outlined,
                    size: 16,
                  ),
                ),
              ],
            )
                .animate(delay: 1400.ms)
                .slideY(
                  begin: -1,
                  end: 0,
                  duration: 500.ms,
                  curve: Curves.easeOutExpo,
                )
                .fadeIn(),
          ],
        ),
      ],
    );
  }
}
