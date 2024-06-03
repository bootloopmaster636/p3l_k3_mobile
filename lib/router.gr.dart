// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AbsenceListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AbsenceListScreen(),
      );
    },
    BridgeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BridgeScreen(),
      );
    },
    CustomerHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CustomerHomeScreen(),
      );
    },
    EditAddressRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditAddressScreen(),
      );
    },
    EditPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditPasswordScreen(),
      );
    },
    EditProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditProfileScreen(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ForgotPasswordScreen(),
      );
    },
    HampersDetailRoute.name: (routeData) {
      final args = routeData.argsAs<HampersDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HampersDetailScreen(
          hampersID: args.hampersID,
          key: args.key,
        ),
      );
    },
    IngredientStockReportRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const IngredientStockReportScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    MoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MoScreen(),
      );
    },
    OrderHistoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrderHistoryScreen(),
      );
    },
    OrderOnDeliveryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrderOnDeliveryScreen(),
      );
    },
    ProductDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductDetailScreen(
          productID: args.productID,
          key: args.key,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterScreen(),
      );
    },
  };
}

/// generated route for
/// [AbsenceListScreen]
class AbsenceListRoute extends PageRouteInfo<void> {
  const AbsenceListRoute({List<PageRouteInfo>? children})
      : super(
          AbsenceListRoute.name,
          initialChildren: children,
        );

  static const String name = 'AbsenceListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BridgeScreen]
class BridgeRoute extends PageRouteInfo<void> {
  const BridgeRoute({List<PageRouteInfo>? children})
      : super(
          BridgeRoute.name,
          initialChildren: children,
        );

  static const String name = 'BridgeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CustomerHomeScreen]
class CustomerHomeRoute extends PageRouteInfo<void> {
  const CustomerHomeRoute({List<PageRouteInfo>? children})
      : super(
          CustomerHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomerHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditAddressScreen]
class EditAddressRoute extends PageRouteInfo<void> {
  const EditAddressRoute({List<PageRouteInfo>? children})
      : super(
          EditAddressRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditAddressRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditPasswordScreen]
class EditPasswordRoute extends PageRouteInfo<void> {
  const EditPasswordRoute({List<PageRouteInfo>? children})
      : super(
          EditPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditProfileScreen]
class EditProfileRoute extends PageRouteInfo<void> {
  const EditProfileRoute({List<PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ForgotPasswordScreen]
class ForgotPasswordRoute extends PageRouteInfo<void> {
  const ForgotPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HampersDetailScreen]
class HampersDetailRoute extends PageRouteInfo<HampersDetailRouteArgs> {
  HampersDetailRoute({
    required int hampersID,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          HampersDetailRoute.name,
          args: HampersDetailRouteArgs(
            hampersID: hampersID,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'HampersDetailRoute';

  static const PageInfo<HampersDetailRouteArgs> page =
      PageInfo<HampersDetailRouteArgs>(name);
}

class HampersDetailRouteArgs {
  const HampersDetailRouteArgs({
    required this.hampersID,
    this.key,
  });

  final int hampersID;

  final Key? key;

  @override
  String toString() {
    return 'HampersDetailRouteArgs{hampersID: $hampersID, key: $key}';
  }
}

/// generated route for
/// [IngredientStockReportScreen]
class IngredientStockReportRoute extends PageRouteInfo<void> {
  const IngredientStockReportRoute({List<PageRouteInfo>? children})
      : super(
          IngredientStockReportRoute.name,
          initialChildren: children,
        );

  static const String name = 'IngredientStockReportRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MoScreen]
class MoRoute extends PageRouteInfo<void> {
  const MoRoute({List<PageRouteInfo>? children})
      : super(
          MoRoute.name,
          initialChildren: children,
        );

  static const String name = 'MoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrderHistoryScreen]
class OrderHistoryRoute extends PageRouteInfo<void> {
  const OrderHistoryRoute({List<PageRouteInfo>? children})
      : super(
          OrderHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderHistoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrderOnDeliveryScreen]
class OrderOnDeliveryRoute extends PageRouteInfo<void> {
  const OrderOnDeliveryRoute({List<PageRouteInfo>? children})
      : super(
          OrderOnDeliveryRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderOnDeliveryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductDetailScreen]
class ProductDetailRoute extends PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    required int productID,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ProductDetailRoute.name,
          args: ProductDetailRouteArgs(
            productID: productID,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static const PageInfo<ProductDetailRouteArgs> page =
      PageInfo<ProductDetailRouteArgs>(name);
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({
    required this.productID,
    this.key,
  });

  final int productID;

  final Key? key;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{productID: $productID, key: $key}';
  }
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterScreen]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
