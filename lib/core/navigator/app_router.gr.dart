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
      final args = routeData.argsAs<SplashRouteArgs>(
          orElse: () => const SplashRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: SplashPage(key: args.key));
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: LoginPage(key: args.key));
    },
    RegisterRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterRouteArgs>(
          orElse: () => const RegisterRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: RegisterPage(key: args.key));
    },
    ResetRoute.name: (routeData) {
      final args = routeData.argsAs<ResetRouteArgs>(
          orElse: () => const ResetRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: ResetPage(key: args.key));
    },
    SearchDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<SearchDetailsRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: SearchDetailsPage(key: args.key, title: args.title));
    },
    ProductDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailsRouteArgs>(
          orElse: () => const ProductDetailsRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: ProductDetailsPage(key: args.key));
    },
    TransactionRoute.name: (routeData) {
      final args = routeData.argsAs<TransactionRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: TransactionPage(key: args.key, account: args.account));
    },
    FilterRoute.name: (routeData) {
      final args = routeData.argsAs<FilterRouteArgs>(
          orElse: () => const FilterRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: FilterPage(key: args.key));
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: HomePage(key: args.key));
    },
    ShopRoute.name: (routeData) {
      final args =
          routeData.argsAs<ShopRouteArgs>(orElse: () => const ShopRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: ShopPage(key: args.key));
    },
    SearchRoute.name: (routeData) {
      final args = routeData.argsAs<SearchRouteArgs>(
          orElse: () => const SearchRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: SearchPage(key: args.key));
    },
    CartRoute.name: (routeData) {
      final args =
          routeData.argsAs<CartRouteArgs>(orElse: () => const CartRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: CartPage(key: args.key));
    },
    FavouriteRoute.name: (routeData) {
      final args = routeData.argsAs<FavouriteRouteArgs>(
          orElse: () => const FavouriteRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: FavouritePage(key: args.key));
    },
    AccountRoute.name: (routeData) {
      final args = routeData.argsAs<AccountRouteArgs>(
          orElse: () => const AccountRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: AccountPage(key: args.key));
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
class SplashRoute extends PageRouteInfo<SplashRouteArgs> {
  SplashRoute({Key? key})
      : super(SplashRoute.name, path: '/', args: SplashRouteArgs(key: key));

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key}';
  }
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({Key? key})
      : super(LoginRoute.name, path: '/login', args: LoginRouteArgs(key: key));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({Key? key})
      : super(RegisterRoute.name,
            path: '/register', args: RegisterRouteArgs(key: key));

  static const String name = 'RegisterRoute';
}

class RegisterRouteArgs {
  const RegisterRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'RegisterRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ResetPage]
class ResetRoute extends PageRouteInfo<ResetRouteArgs> {
  ResetRoute({Key? key})
      : super(ResetRoute.name, path: '/reset', args: ResetRouteArgs(key: key));

  static const String name = 'ResetRoute';
}

class ResetRouteArgs {
  const ResetRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ResetRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SearchDetailsPage]
class SearchDetailsRoute extends PageRouteInfo<SearchDetailsRouteArgs> {
  SearchDetailsRoute({Key? key, required String title})
      : super(SearchDetailsRoute.name,
            path: 'search/:query',
            args: SearchDetailsRouteArgs(key: key, title: title));

  static const String name = 'SearchDetailsRoute';
}

class SearchDetailsRouteArgs {
  const SearchDetailsRouteArgs({this.key, required this.title});

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'SearchDetailsRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [ProductDetailsPage]
class ProductDetailsRoute extends PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({Key? key})
      : super(ProductDetailsRoute.name,
            path: ':id', args: ProductDetailsRouteArgs(key: key));

  static const String name = 'ProductDetailsRoute';
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key}';
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
class FilterRoute extends PageRouteInfo<FilterRouteArgs> {
  FilterRoute({Key? key})
      : super(FilterRoute.name,
            path: 'filter', args: FilterRouteArgs(key: key));

  static const String name = 'FilterRoute';
}

class FilterRouteArgs {
  const FilterRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'FilterRouteArgs{key: $key}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({Key? key, List<PageRouteInfo>? children})
      : super(HomeRoute.name,
            path: '/home-page',
            args: HomeRouteArgs(key: key),
            initialChildren: children);

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ShopPage]
class ShopRoute extends PageRouteInfo<ShopRouteArgs> {
  ShopRoute({Key? key})
      : super(ShopRoute.name, path: 'shop', args: ShopRouteArgs(key: key));

  static const String name = 'ShopRoute';
}

class ShopRouteArgs {
  const ShopRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ShopRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<SearchRouteArgs> {
  SearchRoute({Key? key})
      : super(SearchRoute.name,
            path: 'search', args: SearchRouteArgs(key: key));

  static const String name = 'SearchRoute';
}

class SearchRouteArgs {
  const SearchRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key}';
  }
}

/// generated route for
/// [CartPage]
class CartRoute extends PageRouteInfo<CartRouteArgs> {
  CartRoute({Key? key})
      : super(CartRoute.name, path: 'cart', args: CartRouteArgs(key: key));

  static const String name = 'CartRoute';
}

class CartRouteArgs {
  const CartRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CartRouteArgs{key: $key}';
  }
}

/// generated route for
/// [FavouritePage]
class FavouriteRoute extends PageRouteInfo<FavouriteRouteArgs> {
  FavouriteRoute({Key? key})
      : super(FavouriteRoute.name,
            path: 'favourite', args: FavouriteRouteArgs(key: key));

  static const String name = 'FavouriteRoute';
}

class FavouriteRouteArgs {
  const FavouriteRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'FavouriteRouteArgs{key: $key}';
  }
}

/// generated route for
/// [AccountPage]
class AccountRoute extends PageRouteInfo<AccountRouteArgs> {
  AccountRoute({Key? key})
      : super(AccountRoute.name,
            path: 'account', args: AccountRouteArgs(key: key));

  static const String name = 'AccountRoute';
}

class AccountRouteArgs {
  const AccountRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AccountRouteArgs{key: $key}';
  }
}
