import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nectar_ui/core/models/account_card_model.dart';
import 'package:nectar_ui/view/account_page/transaction_page.dart';
import 'package:nectar_ui/view/filters_page/filters_page.dart';
import 'package:nectar_ui/view/home_page/home_page.dart';
import 'package:nectar_ui/view/shop_page/shop_page.dart';
import 'package:nectar_ui/view/splash_page/splash_page.dart';

import '../../view/account_page/account_page.dart';
import '../../view/authentication_pages/login_page/login_page.dart';
import '../../view/authentication_pages/register_page/register_page.dart';
import '../../view/authentication_pages/reset_page/reset_page.dart';
import '../../view/cart_page/cart_page.dart';
import '../../view/detalis_page/product_detail_page.dart';
import '../../view/detalis_page/search_detail_page.dart';
import '../../view/favourite_page/favourite_page.dart';
import '../../view/onboarding_page/view/onboard_view.dart';
import '../../view/search_page/search_page.dart';
import '../../view/shop_page/components/see_all_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: '/',
          initial: true,
        ),
        AutoRoute(
          page: HomeRoute.page,
          children: [
            AutoRoute(
              page: ShopRoute.page,
              path: 'shop',
            ),
            AutoRoute(
              page: SearchRoute.page,
              path: 'search',
            ),
            AutoRoute(
              page: CartRoute.page,
              path: 'cart',
            ),
            AutoRoute(
              page: FavouriteRoute.page,
              path: 'favourite',
            ),
            AutoRoute(
              page: AccountRoute.page,
              path: 'account',
            ),
          ],
        ),
        AutoRoute(
          page: OnBoardRoute.page,
          path: '/onboard',
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: '/login',
        ),
        AutoRoute(
          page: RegisterRoute.page,
          path: '/register',
        ),
        AutoRoute(
          page: ResetRoute.page,
          path: '/reset',
        ),
        AutoRoute(
          page: SearchDetailsRoute.page,
          path: '/search/:query',
        ),
        AutoRoute(
          page: ProductDetailsRoute.page,
          path: '/:id',
        ),
        AutoRoute(
          page: TransactionRoute.page,
          path: '/transaction',
        ),
        AutoRoute(
          page: FilterRoute.page,
          path: '/filter',
        ),
        AutoRoute(
          page: SeeAllRoute.page,
          path: '/seeAll',
        ),
      ];
}
