import 'package:auto_route/auto_route.dart';
import 'package:el_tooltip/el_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:p3l_k3_mobile/constants.dart';
import 'package:p3l_k3_mobile/data/model/customer_model.dart';
import 'package:p3l_k3_mobile/logic/customer_logic.dart';
import 'package:p3l_k3_mobile/router.dart';

class SettingsDialog extends StatelessWidget {
  const SettingsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Gap(64),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(32),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            child: const DialogContent(),
          ),
        ),
      ],
    )
        .animate()
        .scaleY(
            begin: 0.8,
            end: 1,
            alignment: Alignment.topRight,
            duration: 300.ms,
            curve: Curves.easeOutExpo)
        .fadeIn();
  }
}

class DialogContent extends ConsumerWidget {
  const DialogContent({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<Customer> user = ref.watch(customerLogicProvider);
    return user.isLoading
        ? const CircularProgressIndicator()
        : Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Profile(user: user.value!),
              const Gap(4),
              const SettingsContent(),
              const Gap(8),
              const About(),
            ],
          );
  }
}

class SettingsContent extends StatelessWidget {
  const SettingsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          children: <Widget>[
            ListTile(
              onTap: () {},
              title: Text(
                'My cart (website)',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              leading: const Icon(
                Icons.shopping_cart_outlined,
                size: 20,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'Transfer Balance',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              leading: const Icon(
                Icons.payments_outlined,
                size: 20,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'Order History',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              leading: const Icon(
                Icons.history,
                size: 20,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'Log out',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.error),
              ),
              leading: Icon(
                Icons.logout_outlined,
                size: 20,
                color: Theme.of(context).colorScheme.error,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    required this.user,
    super.key,
  });

  final Customer user;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Row(
          children: <Widget>[
            SizedBox(
              height: 64,
              width: 64,
              child: CircleAvatar(
                backgroundColor:
                    Theme.of(context).colorScheme.tertiaryContainer,
                foregroundImage: NetworkImage(
                  'https://api.dicebear.com/8.x/adventurer/png?seed=${user.user.fullName}',
                ),
              ),
            ),
            const Gap(16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  user.user.fullName,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const Gap(4),
                Row(
                  children: <Widget>[
                    const FaIcon(
                      FontAwesomeIcons.coins,
                      size: 16,
                    ),
                    const Gap(4),
                    Text('${user.point} point'),
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
                    const Gap(20),
                    const Icon(
                      Icons.payments_outlined,
                      size: 16,
                    ),
                    const Gap(4),
                    Text('Rp. ${user.nominalBalance}'),
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
                ),
                const Gap(16),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    context.router.push(const ProfileRoute());
                  },
                  child: Text(
                    'Manage your profile',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  const About({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showAboutDialog(
          context: context,
          applicationName: 'Atma Kitchen Mobile',
          applicationLegalese:
              'Made by Christopher Hartono, I Kadek Dendy Pramartha, and I Gede Bala Putra '
              'for the purpose of P3L (Projek Pengembangan Perangkat Lunak). The app code is NOT open source.\n\n'
              'Some picture is taken from Freepik',
        );
      },
      child: Column(
        children: <Widget>[
          Text(
            'Atma Kitchen Mobile',
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: Theme.of(context).colorScheme.primary),
          ),
          Text(
            'v$versionString',
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: Theme.of(context).colorScheme.primary),
          ),
        ],
      ),
    );
  }
}
