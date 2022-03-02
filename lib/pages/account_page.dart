import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_ui/widgets/divider.dart';

import '../utilities/constants.dart';
import '../utilities/image_path.dart';
import '../utilities/strings.dart';

class AccountPage extends StatefulWidget {
  AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Container(
              color: Colors.transparent,
              height: 120,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25, right: 20, bottom: 30, top: 21),
                    child: Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(27),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/ben.jpg"),
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 21),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text("Hüseyin Şahinli",
                                style: cAccountPageNameTextStyle),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: IconButton(
                                  onPressed: () {}, icon: ImagePath.pencilIcon),
                            )
                          ],
                        ),
                        const Text("huseyinsahinli01@gmail.com",
                            style: cAccountPageMailTextStyle),
                      ],
                    ),
                  )
                ],
              ),
              width: double.infinity,
            ),
            const CustomDivider(),
            Padding(
              padding: const EdgeInsets.only(bottom: 150, left: 27, right: 27),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _createMenuItems(Strings.orders, ImagePath.orderIconPath),
                  _createMenuItems(
                      Strings.myDetails, ImagePath.detailsIconPath),
                  _createMenuItems(
                      Strings.deliveryAddress, ImagePath.addressIconPath),
                  _createMenuItems(Strings.myCart, ImagePath.creditIconPath),
                  _createMenuItems(Strings.promoCard, ImagePath.ticketIconPath),
                  _createMenuItems(
                      Strings.notifecations, ImagePath.bellIconPath),
                  _createMenuItems(Strings.help, ImagePath.helpIconPath),
                  _createMenuItems(Strings.about, ImagePath.aboutIconPath),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: const Color(0xffF2F3F2),
              fixedSize: const Size(double.infinity, 67),
              padding: const EdgeInsets.all(5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19.0),
              ),
            ),
            onPressed: () {},
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(left: 24, child: ImagePath.logoutIcon),
                  const Text(
                    Strings.logout,
                    style: cAccountLogoutTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }

  _createMenuItems(String name, String iconPath) {
    return Column(children: [
      ListTile(
        leading: SvgPicture.asset(iconPath),
        iconColor: Colors.black,
        title: Text(
          name,
          style: cAccountPageTitleStyle,
        ),
        trailing: ImagePath.backArrowIcon,
      ),
      const CustomDivider(),
    ]);
  }
}
