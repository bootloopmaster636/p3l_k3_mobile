import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:p3l_k3_mobile/screen/auth/screen_login.dart';
import 'package:p3l_k3_mobile/screen/auth/screen_register.dart';
import 'package:p3l_k3_mobile/screen/customer/home/customer_home.dart';
import 'package:p3l_k3_mobile/screen/customer/product/product_details.dart';
import 'package:p3l_k3_mobile/screen/customer/settings/profile.dart';
import 'package:p3l_k3_mobile/screen/customer/settings/settings.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
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
          path: '/profile',
        ),
        CustomRoute(
          page: ProductDetailRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          path: '/product',
        ),
        CustomRoute(
          page: SettingsRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          path: '/settings',
        ),
        CustomRoute(
          page: ProfileRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          path: '/profile',
        ),
      ];
}
