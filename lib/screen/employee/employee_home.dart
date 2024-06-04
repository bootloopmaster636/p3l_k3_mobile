import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:p3l_k3_mobile/data/model/auth_model.dart';
import 'package:p3l_k3_mobile/logic/auth_logic.dart';
import 'package:p3l_k3_mobile/router.dart';

@RoutePage()
class EmployeeScreen extends HookConsumerWidget {
  const EmployeeScreen({super.key});

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
    final AsyncValue<Auth> auth = ref.watch(authLogicProvider);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Lottie.asset('assets/anim/admin.json'),
          ),
          Text(
            'Welcome, ${auth.value?.user.fullName}!',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            'What do you want to do today?',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const Gap(16),

          // if role is MO
          if (auth.value?.user.roleId == 3)
            Column(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    context.router.push(const AbsenceListRoute());
                  },
                  child: const Text('Absence Management'),
                ),
              ],
            ),

          // if role is Owner
          if (auth.value?.user.roleId == 1)
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Nothing to see here 😁'),
                Text('To see report please use the report menu below......'),
              ],
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
          ElevatedButton(
            onPressed: () {
              context.router.push(const IngredientUsageReportGenerateRoute());
            },
            child: const Text('Ingredient Usage Report'),
          ),
        ],
      ),
    );
  }
}
