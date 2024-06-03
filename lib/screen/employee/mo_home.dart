import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:p3l_k3_mobile/logic/auth_logic.dart';
import 'package:p3l_k3_mobile/router.dart';

@RoutePage()
class MoScreen extends HookConsumerWidget {
  const MoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ValueNotifier<int> tab = useState(0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              ref.read(authLogicProvider.notifier).logout();
            },
            icon: const Icon(Icons.logout_outlined),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          tab.value = index;
        },
        selectedIndex: tab.value,
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.book_outlined), label: 'Report')
        ],
      ),
      body: IndexedStack(
        index: tab.value,
        children: const <Widget>[
          HomeMenu(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ReportMenu(),
          ),
        ],
      ),
    );
  }
}

class HomeMenu extends ConsumerWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
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
    );
  }
}

class ReportMenu extends StatelessWidget {
  const ReportMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Text(
            'Report Menu',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Gap(16),
          ElevatedButton(
            onPressed: () {
              context.router.push(const IngredientStockReportRoute());
            },
            child: const Text('Ingredient Report'),
          ),
        ],
      ),
    );
  }
}
