import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:p3l_k3_mobile/screen/auth/bridge.dart';
import 'package:p3l_k3_mobile/screen/auth/forgot_password.dart';
import 'package:p3l_k3_mobile/screen/auth/screen_login.dart';
import 'package:p3l_k3_mobile/screen/auth/screen_register.dart';
import 'package:p3l_k3_mobile/screen/customer/home/customer_home.dart';
import 'package:p3l_k3_mobile/screen/customer/product/hampers_details.dart';
import 'package:p3l_k3_mobile/screen/customer/product/product_details.dart';
import 'package:p3l_k3_mobile/screen/customer/settings/edit_address.dart';
import 'package:p3l_k3_mobile/screen/customer/settings/edit_password.dart';
import 'package:p3l_k3_mobile/screen/customer/settings/edit_profile.dart';
import 'package:p3l_k3_mobile/screen/customer/settings/order_history.dart';
import 'package:p3l_k3_mobile/screen/customer/settings/order_on_delivery.dart';
import 'package:p3l_k3_mobile/screen/customer/settings/profile.dart';
import 'package:p3l_k3_mobile/screen/customer/settings/withdraw_history_page.dart';
import 'package:p3l_k3_mobile/screen/employee/absence_list.dart';
import 'package:p3l_k3_mobile/screen/employee/employee_home.dart';
import 'package:p3l_k3_mobile/screen/employee/report/ingredient_stock_report.dart';
import 'package:p3l_k3_mobile/screen/employee/report/ingredient_usage_report.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          initial: true,
          page: BridgeRoute.page,
          path: '/',
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: '/login',
        ),
        AutoRoute(
          page: RegisterRoute.page,
          path: '/register',
        ),
        CustomRoute(
          page: CustomerHomeRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
          path: '/home',
        ),
        CustomRoute(
          page: ProductDetailRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          path: '/product',
        ),
        CustomRoute(
          page: OrderOnDeliveryRoute.page,
          transitionsBuilder: _slideLeftWithEase,
          durationInMilliseconds: 300,
          path: '/orderOnDelivery',
        ),
        CustomRoute(
          page: HampersDetailRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          path: '/hampers',
        ),
        CustomRoute(
          page: ProfileRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          path: '/profile',
        ),
        CustomRoute(
          page: EditProfileRoute.page,
          transitionsBuilder: _slideLeftWithEase,
          durationInMilliseconds: 400,
          path: '/editProfile',
        ),
        CustomRoute(
          page: EditPasswordRoute.page,
          transitionsBuilder: _slideLeftWithEase,
          durationInMilliseconds: 400,
          path: '/forgotPassword',
        ),
        CustomRoute(
          page: EditAddressRoute.page,
          transitionsBuilder: _slideLeftWithEase,
          durationInMilliseconds: 400,
          path: '/myAddress',
        ),
        CustomRoute(
           page: WithdrawHistoryRoute.page,
          transitionsBuilder: _slideLeftWithEase,
          durationInMilliseconds: 400,
          path: '/withdrawHistory',
        ),
        AutoRoute(
          page: EmployeeRoute.page,
          path: '/mo',
        ),
        AutoRoute(
          page: AbsenceListRoute.page,
          path: '/mo',
        ),
        AutoRoute(
          page: ForgotPasswordRoute.page,
          path: '/forgotPassword',
        ),
        AutoRoute(
          page: OrderHistoryRoute.page,
          path: '/orderHistory',
        ),
        AutoRoute(
          page: IngredientStockReportRoute.page,
          path: '/ingredientStockReport',
        ),
        AutoRoute(
          page: IngredientUsageReportGenerateRoute.page,
          path: '/ingredientUsageReport',
        ),
      ];

  Widget _slideLeftWithEase(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1, 0),
        end: Offset.zero,
      ).chain(CurveTween(curve: Curves.easeOutQuint)).animate(animation),
      child: child,
    );
  }
}
