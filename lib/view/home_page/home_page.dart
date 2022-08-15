import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar_ui/core/navigator/app_router.dart';
import '../../../core/constant/app_strings.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      physics: const NeverScrollableScrollPhysics(),
      routes: [
        ShopRoute(),
        ExploreRoute(),
        FavouriteRoute(),
        CartRoute(),
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
                      const Icon(Icons.store_mall_directory_outlined),
                      Strings.shop),
                  _createBottomBarItem(
                      const Icon(Icons.search_outlined), Strings.explore),
                  _createBottomBarItem(
                      const Icon(Icons.shopping_cart_outlined), Strings.cart),
                  _createBottomBarItem(
                      const Icon(Icons.favorite_border_outlined),
                      Strings.favourite),
                  _createBottomBarItem(
                      const Icon(Icons.person_outlined), Strings.account),
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

  BottomNavigationBarItem _createBottomBarItem(Icon icon, String label) {
    return BottomNavigationBarItem(icon: icon, label: label);
  }
}
