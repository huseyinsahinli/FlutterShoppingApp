import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constant/app_constant.dart';
import '../../../core/constant/app_strings.dart';
import '../../../core/constant/icon_enum.dart';
import '../profile_page/account_page.dart';
import '../cart_page/cart_page.dart';
import '../favourite_page/favourite_page.dart';
import '../search_page/explore_page.dart';
import '../shop_page/shop_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  PageController pageController = PageController();

  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (value) => setState(() {
          _selectedIndex = value;
        }),
        children: [
          ShopPage(),
          ExplorePage(),
          CartPage(),
          FavouritePage(),
          AccountPage()
        ],
        controller: pageController,
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 201, 206, 214),
                spreadRadius: 0,
                blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              _createBottomBarItem(IconEnums.store.toImage,
                  IconEnums.store.toImageActive, Strings.shop),
              _createBottomBarItem(IconEnums.explore.toImage,
                  IconEnums.explore.toImageActive, Strings.explore),
              _createBottomBarItem(IconEnums.cart.toImage,
                  IconEnums.cart.toImageActive, Strings.cart),
              _createBottomBarItem(IconEnums.favourite.toImage,
                  IconEnums.favourite.toImageActive, Strings.favourite),
              _createBottomBarItem(IconEnums.user.toImage,
                  IconEnums.user.toImageActive, Strings.account),
            ],
            elevation: 12,
            iconSize: 24,
            selectedItemColor: cMainColor,
            currentIndex: _selectedIndex,
            onTap: onTap,
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _createBottomBarItem(
      SvgPicture icon, SvgPicture activeIcon, String label) {
    return BottomNavigationBarItem(
        icon: icon, activeIcon: activeIcon, label: label);
  }
}
