import 'package:flutter/material.dart';
import '../../../core/constant/app_strings.dart';
import '../account_page/view/account_page.dart';
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
        color: Theme.of(context).colorScheme.background,
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  color: Theme.of(context).shadowColor,
                  spreadRadius: 0,
                  blurRadius: 1),
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
                _createBottomBarItem(const Icon(Icons.favorite_border_outlined),
                    Strings.favourite),
                _createBottomBarItem(
                    const Icon(Icons.person_outlined), Strings.account),
              ],
              currentIndex: _selectedIndex,
              onTap: onTap,
            ),
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _createBottomBarItem(Icon icon, String label) {
    return BottomNavigationBarItem(icon: icon, label: label);
  }
}
