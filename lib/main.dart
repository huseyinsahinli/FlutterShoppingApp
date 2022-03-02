import 'package:flutter/material.dart';
import 'package:nectar_ui/pages/account_page.dart';
import 'package:nectar_ui/pages/cart_page.dart';
import 'package:nectar_ui/pages/explore_page.dart';
import 'package:nectar_ui/pages/favourite_page.dart';
import 'package:nectar_ui/pages/shop_page.dart';
import 'package:nectar_ui/utilities/constants.dart';
import 'package:nectar_ui/utilities/image_path.dart';
import 'package:nectar_ui/utilities/strings.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Gilroy",
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedLabelStyle: TextStyle(
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w900,
              fontSize: 14.0),
          unselectedLabelStyle: TextStyle(
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w900,
              fontSize: 13.0),
          unselectedItemColor: cTextColor,
          showUnselectedLabels: true,
        ),
      ),
      title: 'Nectar UI',
      home: Scaffold(
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
                BottomNavigationBarItem(
                    icon: ImagePath.shopIcon,
                    activeIcon: ImagePath.shopIconActive,
                    label: Strings.shop),
                BottomNavigationBarItem(
                    icon: ImagePath.exploreIcon,
                    activeIcon: ImagePath.exploreIconActive,
                    label: Strings.explore),
                BottomNavigationBarItem(
                    icon: ImagePath.cartIcon,
                    activeIcon: ImagePath.cartIconActive,
                    label: Strings.cart),
                BottomNavigationBarItem(
                    icon: ImagePath.favouriteIcon,
                    activeIcon: ImagePath.favouriteIconActive,
                    label: Strings.favourite),
                BottomNavigationBarItem(
                    icon: ImagePath.accountIcon,
                    activeIcon: ImagePath.accountIconActive,
                    label: Strings.account),
              ],
              elevation: 12,
              iconSize: 24,
              selectedItemColor: cMainColor,
              currentIndex: _selectedIndex,
              onTap: onTap,
            ),
          ),
        ),
      ),
    );
  }
}
