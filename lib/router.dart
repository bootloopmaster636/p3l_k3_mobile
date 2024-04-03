import 'package:auto_route/auto_route.dart';
import 'package:p3l_k3_mobile/screen/auth/screen_login.dart';
import 'package:p3l_k3_mobile/screen/auth/screen_register.dart';
import 'package:p3l_k3_mobile/screen/customer/home/customer_home.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          initial: true,
          path: '/login',
        ),
        AutoRoute(
          page: RegisterRoute.page,
          path: '/register',
        ),
        AutoRoute(
          page: CustomerHomeRoute.page,
          path: '/customer',
        ),
      ];
}
