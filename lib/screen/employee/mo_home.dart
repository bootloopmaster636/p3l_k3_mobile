import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
        title: const Text('Welcome, Operational Manager!'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context.router.push(const AbsenceListRoute());
              },
              child: const Text('Absence Management'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(authLogicProvider.notifier).logout();
              },
              child: const Text('Log out'),
            ),
          ],
        ),
      ),
    );
  }
}
