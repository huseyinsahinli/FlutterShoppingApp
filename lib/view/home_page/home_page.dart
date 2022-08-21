import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constant/app_icon.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/init/lang/locale_keys.g.dart';
import 'package:nectar_ui/core/navigator/app_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //TODO border radiuslar ve paddinglarını düzenle
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      physics: const NeverScrollableScrollPhysics(),
      routes: [
        ShopRoute(),
        SearchRoute(),
        CartRoute(),
        FavouriteRoute(),
        AccountRoute(),
      ],
      builder: (context, child, tabController) {
        return Scaffold(
          body: child,
          bottomNavigationBar: Container(
            height: 80,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).shadowColor,
                  spreadRadius: 0,
                  blurRadius: 1,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              child: BottomNavigationBar(
                items: [
                  _createBottomBarItem(
                    AppIcons.shop,
                    LocaleKeys.home_shop.locale,
                  ),
                  _createBottomBarItem(
                    AppIcons.search,
                    LocaleKeys.home_search.locale,
                  ),
                  _createBottomBarItem(
                    Center(
                      child: Badge(
                        badgeContent: Text(
                          '5',
                          style:
                              Theme.of(context).textTheme.subtitle2!.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                        animationDuration: const Duration(milliseconds: 300),
                        child: AppIcons.cart,
                      ),
                    ),
                    LocaleKeys.home_cart.locale,
                  ),
                  _createBottomBarItem(
                    AppIcons.favourite,
                    LocaleKeys.home_favourite.locale,
                  ),
                  _createBottomBarItem(
                    AppIcons.account,
                    LocaleKeys.home_account.locale,
                  ),
                ],
                onTap: context.tabsRouter.setActiveIndex,
                currentIndex: context.tabsRouter.activeIndex,
              ),
            ),
          ),
        );
      },
    );
  }

  BottomNavigationBarItem _createBottomBarItem(icon, String label) {
    return BottomNavigationBarItem(icon: icon, label: label);
  }
}
