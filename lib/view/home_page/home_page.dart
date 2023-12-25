import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constant/app_border_radius.dart';
import 'package:nectar_ui/core/constant/app_icon.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/helper/text_scale_size.dart';
import 'package:nectar_ui/core/init/lang/locale_keys.g.dart';
import 'package:nectar_ui/core/navigator/app_router.dart';
import 'package:nectar_ui/core/providers/cart_provider.dart';
import 'package:provider/provider.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      physics: const NeverScrollableScrollPhysics(),
      routes: const [
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
              borderRadius: AppBorderRadius.topLeftRight20,
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).shadowColor,
                  spreadRadius: 0,
                  blurRadius: 1,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: AppBorderRadius.topLeftRight20,
              child: BottomNavigationBar(
                items: [
                  createBottomBarItem(
                    AppIcons.shop,
                    LocaleKeys.home_shop.locale,
                  ),
                  createBottomBarItem(
                    AppIcons.search,
                    LocaleKeys.home_search.locale,
                  ),
                  createBottomBarItem(
                    Consumer<CartProvider>(builder: (context, value, child) {
                      return value.counter == 0
                          ? AppIcons.cart
                          : Center(
                              child: badges.Badge(
                                badgeContent: Text(
                                  "${value.counter}",
                                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                  textScaleFactor: ScaleSize.textScaleFactor(context),
                                ),
                                // badgeAnimation: BadgeAnimation.scale,
                                child: AppIcons.cart,
                              ),
                            );
                    }),
                    LocaleKeys.home_cart.locale,
                  ),
                  createBottomBarItem(
                    AppIcons.favourite,
                    LocaleKeys.home_favourite.locale,
                  ),
                  createBottomBarItem(
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

  BottomNavigationBarItem createBottomBarItem(Widget icon, String label) {
    return BottomNavigationBarItem(icon: icon, label: label);
  }
}
