// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AccountPage(),
      );
    },
    CartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CartPage(),
      );
    },
    FavouriteRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavouritePage(),
      );
    },
    FilterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FilterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    OnBoardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnBoardPage(),
      );
    },
    ProductDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductDetailsPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterPage(),
      );
    },
    ResetRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ResetPage(),
      );
    },
    SearchDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<SearchDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SearchDetailsPage(
          key: args.key,
          title: args.title,
          id: args.id,
        ),
      );
    },
    SearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchPage(),
      );
    },
    SeeAllRoute.name: (routeData) {
      final args = routeData.argsAs<SeeAllRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SeeAllPage(
          key: args.key,
          title: args.title,
          data: args.data,
        ),
      );
    },
    ShopRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShopPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    TransactionRoute.name: (routeData) {
      final args = routeData.argsAs<TransactionRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TransactionPage(
          key: args.key,
          account: args.account,
        ),
      );
    },
  };
}

/// generated route for
/// [AccountPage]
class AccountRoute extends PageRouteInfo<void> {
  const AccountRoute({List<PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CartPage]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute({List<PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavouritePage]
class FavouriteRoute extends PageRouteInfo<void> {
  const FavouriteRoute({List<PageRouteInfo>? children})
      : super(
          FavouriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavouriteRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FilterPage]
class FilterRoute extends PageRouteInfo<void> {
  const FilterRoute({List<PageRouteInfo>? children})
      : super(
          FilterRoute.name,
          initialChildren: children,
        );

  static const String name = 'FilterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
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
/// [OnBoardPage]
class OnBoardRoute extends PageRouteInfo<void> {
  const OnBoardRoute({List<PageRouteInfo>? children})
      : super(
          OnBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductDetailsPage]
class ProductDetailsRoute extends PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({
    Key? key,
    required QueryDocumentSnapshot<Object?> data,
    List<PageRouteInfo>? children,
  }) : super(
          ProductDetailsRoute.name,
          args: ProductDetailsRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailsRoute';

  static const PageInfo<ProductDetailsRouteArgs> page =
      PageInfo<ProductDetailsRouteArgs>(name);
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({
    this.key,
    required this.data,
  });

  final Key? key;

  final QueryDocumentSnapshot<Object?> data;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ResetPage]
class ResetRoute extends PageRouteInfo<void> {
  const ResetRoute({List<PageRouteInfo>? children})
      : super(
          ResetRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchDetailsPage]
class SearchDetailsRoute extends PageRouteInfo<SearchDetailsRouteArgs> {
  SearchDetailsRoute({
    Key? key,
    required String title,
    required String id,
    List<PageRouteInfo>? children,
  }) : super(
          SearchDetailsRoute.name,
          args: SearchDetailsRouteArgs(
            key: key,
            title: title,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchDetailsRoute';

  static const PageInfo<SearchDetailsRouteArgs> page =
      PageInfo<SearchDetailsRouteArgs>(name);
}

class SearchDetailsRouteArgs {
  const SearchDetailsRouteArgs({
    this.key,
    required this.title,
    required this.id,
  });

  final Key? key;

  final String title;

  final String id;

  @override
  String toString() {
    return 'SearchDetailsRouteArgs{key: $key, title: $title, id: $id}';
  }
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SeeAllPage]
class SeeAllRoute extends PageRouteInfo<SeeAllRouteArgs> {
  SeeAllRoute({
    Key? key,
    required String title,
    required QuerySnapshot<Object?> data,
    List<PageRouteInfo>? children,
  }) : super(
          SeeAllRoute.name,
          args: SeeAllRouteArgs(
            key: key,
            title: title,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'SeeAllRoute';

  static const PageInfo<SeeAllRouteArgs> page = PageInfo<SeeAllRouteArgs>(name);
}

class SeeAllRouteArgs {
  const SeeAllRouteArgs({
    this.key,
    required this.title,
    required this.data,
  });

  final Key? key;

  final String title;

  final QuerySnapshot<Object?> data;

  @override
  String toString() {
    return 'SeeAllRouteArgs{key: $key, title: $title, data: $data}';
  }
}

/// generated route for
/// [ShopPage]
class ShopRoute extends PageRouteInfo<void> {
  const ShopRoute({List<PageRouteInfo>? children})
      : super(
          ShopRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShopRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TransactionPage]
class TransactionRoute extends PageRouteInfo<TransactionRouteArgs> {
  TransactionRoute({
    Key? key,
    required AccountModel account,
    List<PageRouteInfo>? children,
  }) : super(
          TransactionRoute.name,
          args: TransactionRouteArgs(
            key: key,
            account: account,
          ),
          initialChildren: children,
        );

  static const String name = 'TransactionRoute';

  static const PageInfo<TransactionRouteArgs> page =
      PageInfo<TransactionRouteArgs>(name);
}

class TransactionRouteArgs {
  const TransactionRouteArgs({
    this.key,
    required this.account,
  });

  final Key? key;

  final AccountModel account;

  @override
  String toString() {
    return 'TransactionRouteArgs{key: $key, account: $account}';
  }
}
