import 'package:auto_route/auto_route.dart';
import 'package:el_tooltip/el_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:p3l_k3_mobile/data/test_user_model.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const TestUser user = exampleUser;
    return const Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          Header(
            user: user,
          ),
          SettingsContent(),
        ],
      ),
    );
  }
}

class SettingsContent extends StatelessWidget {
  const SettingsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate.fixed(<Widget>[
        const Gap(4),
        ListTile(
          title: const Text('Your profile'),
          leading: const Icon(Icons.person_outline_outlined),
          onTap: () {},
        ),
        ListTile(
          title: const Text('Transfer balance'),
          leading: const Icon(Icons.payments_outlined),
          onTap: () {},
        ),
        ListTile(
          title: const Text('About'),
          leading: const Icon(Icons.info_outline),
          onTap: () {
            showAboutDialog(
              context: context,
              applicationName: 'Atma Kitchen Mobile',
              applicationLegalese: 'Made by Christopher Hartono, I Kadek Dendy Pramartha, and I Gede Bala Putra '
                  'for the purpose of P3L (Projek Pengembangan Perangkat Lunak). The app code is NOT open source.\n\n'
                  'Some picture is taken from Freepik',
            );
          },
        ),
        const Gap(12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: FilledButton(
            onPressed: () {
              context.router.back();
            },
            child: const Text('Return to home'),
          ),
        ),
      ]),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    required this.user,
    super.key,
  });
  final TestUser user;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 180,
      stretch: true,
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.yellow.withOpacity(0.2),
                    Colors.orange.withOpacity(0.2),
                  ],
                ),
              ),
              child: Image.asset(
                'assets/pictures/cakes-light.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    height: 84,
                    width: 84,
                    child: CircleAvatar(
                      backgroundColor: Colors.lightGreen,
                    ),
                  ),
                  const Gap(16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        user.name,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        user.email,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const Gap(8),
                      Row(
                        children: <Widget>[
                          const Icon(
                            Icons.monetization_on_outlined,
                            size: 20,
                          ),
                          const Gap(4),
                          Text('${user.poin} point'),
                          const Gap(24),
                          const Icon(
                            Icons.payments_outlined,
                            size: 20,
                          ),
                          const Gap(4),
                          Text('Rp. ${user.saldo.toInt()}'),
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
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
