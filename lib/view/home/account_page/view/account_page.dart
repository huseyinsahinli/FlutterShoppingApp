import 'package:flutter/material.dart';
import 'package:nectar_ui/view/home/account_page/viewmodel/account_card_model.dart';
import '../../../../core/constant/app_strings.dart';

import '../../../../core/constant/app_constant.dart';
import '../../../../core/constant/icon_enum.dart';
import '../../../../core/widgets/change_theme_button_widget.dart';
import '../../../../core/widgets/divider.dart';

class AccountPage extends StatefulWidget {
  AccountPage({
    Key? key,
  }) : super(key: key);
  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final List<Widget> _accountCardPage = AccountModels.toPageList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Theme.of(context).backgroundColor,
          child: ListView(
            shrinkWrap: true,
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
                              image: AssetImage("assets/images/png/ben.jpg"),
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
                              Text("Hüseyin Şahinli",
                                  style: Theme.of(context).textTheme.headline3),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: IconEnums.pencil.toImage),
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
                  padding:
                      const EdgeInsets.only(bottom: 150, left: 27, right: 27),
                  child: ListView.builder(
                      itemCount: AccountModels.accountCards.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: ((context, index) {
                        return InkWell(
                          onTap: () {
                            if (AccountModels
                                    .accountCards[index].bottomSheetBool ??
                                false) {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext bc) {
                                    return SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.4,
                                        child: _accountCardPage[index]);
                                  });
                            }
                            // Navigator.of(context).push(
                            //   MaterialPageRoute<void>(
                            //     builder: (BuildContext context) =>
                            //         _accountCardPage[index],
                            //   ),
                            // );
                          },
                          child: Column(children: [
                            ListTile(
                              iconColor: Theme.of(context).iconTheme.color,
                              leading: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AccountModels.accountCards[index].leading,
                                ],
                              ),
                              title: Text(
                                AccountModels.accountCards[index].title,
                                style: cAccountPageTitleStyle,
                              ),
                              trailing: IconEnums.rightarrow.toImage,
                            ),
                            const CustomDivider(),
                          ]),
                        );
                      }))),
            ],
          ),
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
                  Positioned(left: 24, child: IconEnums.logout.toImage),
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
}
