import 'package:auto_route/auto_route.dart';
import 'package:el_tooltip/el_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:p3l_k3_mobile/constants.dart';
import 'package:p3l_k3_mobile/data/test_user_model.dart';
import 'package:p3l_k3_mobile/router.dart';

class SettingsDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(72),
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
    );
  }
}

class DialogContent extends StatelessWidget {
  const DialogContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const user = exampleUser;
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Profile(user: user),
        Gap(4),
        SettingsContent(),
        Gap(8),
        About(),
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
          children: [
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
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    super.key,
    required this.user,
  });

  final TestUser user;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Row(
          children: [
            SizedBox(
              height: 64,
              width: 64,
              child: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
                foregroundImage: NetworkImage(user.profilePictURL),
              ),
            ),
            const Gap(16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
                const Gap(4),
                Row(
                  children: <Widget>[
                    const FaIcon(
                      FontAwesomeIcons.coins,
                      size: 16,
                    ),
                    const Gap(4),
                    Text('${user.poin} point'),
                    const Gap(4),
                    const ElTooltip(
                      position: ElTooltipPosition.bottomCenter,
                      appearAnimationDuration: Duration(milliseconds: 100),
                      disappearAnimationDuration: Duration(milliseconds: 100),
                      modalConfiguration: ModalConfiguration(opacity: 0.2),
                      content: Text('This is the bonus coins you get from ordering, each coin worth Rp. 100.\n\n'
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
                    Text('Rp. ${user.saldo.toInt()}'),
                    const Gap(4),
                    const ElTooltip(
                      position: ElTooltipPosition.bottomEnd,
                      appearAnimationDuration: Duration(milliseconds: 100),
                      disappearAnimationDuration: Duration(milliseconds: 100),
                      modalConfiguration: ModalConfiguration(opacity: 0.2),
                      content:
                          Text('Money will be refunded to this account when you paid but the order is cancelled.\n\n'
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
                      )),
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
          applicationLegalese: 'Made by Christopher Hartono, I Kadek Dendy Pramartha, and I Gede Bala Putra '
              'for the purpose of P3L (Projek Pengembangan Perangkat Lunak). The app code is NOT open source.\n\n'
              'Some picture is taken from Freepik',
        );
      },
      child: Column(
        children: [
          Text('Atma Kitchen Mobile'),
          Text('v${versionString}'),
        ],
      ),
    );
  }
}
