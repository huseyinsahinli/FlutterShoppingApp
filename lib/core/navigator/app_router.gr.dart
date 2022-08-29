// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    OnBoardRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const OnBoardPage());
    },
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SplashPage());
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LoginPage());
    },
    RegisterRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const RegisterPage());
    },
    ResetRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ResetPage());
    },
    SearchDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<SearchDetailsRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              SearchDetailsPage(key: args.key, title: args.title, id: args.id));
    },
    ProductDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailsRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: ProductDetailsPage(key: args.key, data: args.data));
    },
    TransactionRoute.name: (routeData) {
      final args = routeData.argsAs<TransactionRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: TransactionPage(key: args.key, account: args.account));
    },
    FilterRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const FilterPage());
    },
    SeeAllRoute.name: (routeData) {
      final args = routeData.argsAs<SeeAllRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: SeeAllPage(key: args.key, title: args.title, data: args.data));
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    ShopRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ShopPage());
    },
    SearchRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SearchPage());
    },
    CartRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CartPage());
    },
    FavouriteRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const FavouritePage());
    },
    AccountRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const AccountPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(OnBoardRoute.name, path: '/onboard'),
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(LoginRoute.name, path: '/login'),
        RouteConfig(RegisterRoute.name, path: '/register'),
        RouteConfig(ResetRoute.name, path: '/reset'),
        RouteConfig(SearchDetailsRoute.name, path: 'search/:query'),
        RouteConfig(ProductDetailsRoute.name, path: ':id'),
        RouteConfig(TransactionRoute.name, path: '/transaction'),
        RouteConfig(FilterRoute.name, path: 'filter'),
        RouteConfig(SeeAllRoute.name, path: 'seeAll'),
        RouteConfig(HomeRoute.name, path: '/home-page', children: [
          RouteConfig(ShopRoute.name, path: 'shop', parent: HomeRoute.name),
          RouteConfig(SearchRoute.name, path: 'search', parent: HomeRoute.name),
          RouteConfig(CartRoute.name, path: 'cart', parent: HomeRoute.name),
          RouteConfig(FavouriteRoute.name,
              path: 'favourite', parent: HomeRoute.name),
          RouteConfig(AccountRoute.name,
              path: 'account', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [OnBoardPage]
class OnBoardRoute extends PageRouteInfo<void> {
  const OnBoardRoute() : super(OnBoardRoute.name, path: '/onboard');

  static const String name = 'OnBoardRoute';
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: '/register');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [ResetPage]
class ResetRoute extends PageRouteInfo<void> {
  const ResetRoute() : super(ResetRoute.name, path: '/reset');

  static const String name = 'ResetRoute';
}

/// generated route for
/// [SearchDetailsPage]
class SearchDetailsRoute extends PageRouteInfo<SearchDetailsRouteArgs> {
  SearchDetailsRoute({Key? key, required String title, required String id})
      : super(SearchDetailsRoute.name,
            path: 'search/:query',
            args: SearchDetailsRouteArgs(key: key, title: title, id: id));

  static const String name = 'SearchDetailsRoute';
}

class SearchDetailsRouteArgs {
  const SearchDetailsRouteArgs(
      {this.key, required this.title, required this.id});

  final Key? key;

  final String title;

  final String id;

  @override
  String toString() {
    return 'SearchDetailsRouteArgs{key: $key, title: $title, id: $id}';
  }
}

/// generated route for
/// [ProductDetailsPage]
class ProductDetailsRoute extends PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({Key? key, required QueryDocumentSnapshot<Object?> data})
      : super(ProductDetailsRoute.name,
            path: ':id', args: ProductDetailsRouteArgs(key: key, data: data));

  static const String name = 'ProductDetailsRoute';
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({this.key, required this.data});

  final Key? key;

  final QueryDocumentSnapshot<Object?> data;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [TransactionPage]
class TransactionRoute extends PageRouteInfo<TransactionRouteArgs> {
  TransactionRoute({Key? key, required AccountModel account})
      : super(TransactionRoute.name,
            path: '/transaction',
            args: TransactionRouteArgs(key: key, account: account));

  static const String name = 'TransactionRoute';
}

class TransactionRouteArgs {
  const TransactionRouteArgs({this.key, required this.account});

  final Key? key;

  final AccountModel account;

  @override
  String toString() {
    return 'TransactionRouteArgs{key: $key, account: $account}';
  }
}

/// generated route for
/// [FilterPage]
class FilterRoute extends PageRouteInfo<void> {
  const FilterRoute() : super(FilterRoute.name, path: 'filter');

  static const String name = 'FilterRoute';
}

/// generated route for
/// [SeeAllPage]
class SeeAllRoute extends PageRouteInfo<SeeAllRouteArgs> {
  SeeAllRoute(
      {Key? key, required String title, required QuerySnapshot<Object?> data})
      : super(SeeAllRoute.name,
            path: 'seeAll',
            args: SeeAllRouteArgs(key: key, title: title, data: data));

  static const String name = 'SeeAllRoute';
}

class SeeAllRouteArgs {
  const SeeAllRouteArgs({this.key, required this.title, required this.data});

  final Key? key;

  final String title;

  final QuerySnapshot<Object?> data;

  @override
  String toString() {
    return 'SeeAllRouteArgs{key: $key, title: $title, data: $data}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/home-page', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [ShopPage]
class ShopRoute extends PageRouteInfo<void> {
  const ShopRoute() : super(ShopRoute.name, path: 'shop');

  static const String name = 'ShopRoute';
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: 'search');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [CartPage]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute() : super(CartRoute.name, path: 'cart');

  static const String name = 'CartRoute';
}

/// generated route for
/// [FavouritePage]
class FavouriteRoute extends PageRouteInfo<void> {
  const FavouriteRoute() : super(FavouriteRoute.name, path: 'favourite');

  static const String name = 'FavouriteRoute';
}

/// generated route for
/// [AccountPage]
class AccountRoute extends PageRouteInfo<void> {
  const AccountRoute() : super(AccountRoute.name, path: 'account');

  static const String name = 'AccountRoute';
}
