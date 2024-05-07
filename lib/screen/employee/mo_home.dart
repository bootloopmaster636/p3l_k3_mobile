import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:p3l_k3_mobile/logic/auth_logic.dart';
import 'package:p3l_k3_mobile/router.dart';
import 'package:p3l_k3_mobile/screen/employee/mo/absence_list.dart';

@RoutePage()
class MoScreen extends ConsumerWidget {
  const MoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(authLogicProvider.notifier).logout();
            },
            icon: const Icon(Icons.logout_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Welcome, ${ref.read(authLogicProvider).value?.user.fullName}!',
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'What do you want to do today?',
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Gap(16),
            ElevatedButton(
              onPressed: () {
                context.router.push(const AbsenceListRoute());
              },
              child: const Text('Absence Management'),
            ),
          ],
        ),
      ),
    );
  }
}
