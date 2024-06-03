import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:p3l_k3_mobile/data/model/auth_model.dart';
import 'package:p3l_k3_mobile/logic/auth_logic.dart';
import 'package:p3l_k3_mobile/screen/auth/screen_login.dart';
import 'package:p3l_k3_mobile/screen/customer/home/customer_home.dart';
import 'package:p3l_k3_mobile/screen/employee/mo/mo_home.dart';

@RoutePage()
class BridgeScreen extends ConsumerWidget {
  const BridgeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<Auth> auth = ref.watch(authLogicProvider);

    if (auth.value?.accessToken != '') {
      if (auth.value?.user.roleId == 4 || auth.value?.accessToken == 'guest') {
        //role id 4 is customer
        return const CustomerHomeScreen();
      } else if (auth.value?.user.roleId == 3) {
        //role id 3 is MO
        return const MoScreen();
      } else {
        return const LoginScreen();
      }
    } else {
      return const LoginScreen();
    }
  }
}
