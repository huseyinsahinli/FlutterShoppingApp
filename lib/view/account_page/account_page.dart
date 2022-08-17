import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../core/constant/app_constant.dart';
import '../../../core/constant/icon_enum.dart';
import '../../../core/widgets/divider.dart';
import '../../core/helper/text_scale_size.dart';
import '../../core/models/account_card_model.dart';
import '../../core/navigator/app_router.dart';

class AccountPage extends StatefulWidget {
  AccountPage({
    Key? key,
  }) : super(key: key);
  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();
    auth.userChanges().listen((User? user) {
      if (user == null) {
        print('Evet çıktı');
        context.router.replace(LoginRoute());
      } else {
        print('User is currently signed out!');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            color: Colors.transparent,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const AppPadding.all(),
                  child: Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        color: cWhiteColor,
                        borderRadius: BorderRadius.circular(32),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/png/ben.jpg"),
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                Padding(
                  padding: const AppPadding.onlyTop(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hüseyin Şahinli",
                            style: Theme.of(context).textTheme.headline1,
                            textScaleFactor: ScaleSize.textScaleFactor(context),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: IconEnums.pencil.toImage,
                          )
                        ],
                      ),
                      Text(
                        "huseyinsahinli01@gmail.com",
                        textScaleFactor: ScaleSize.textScaleFactor(context),
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const CustomDivider(),
          Padding(
            padding: const AppPadding.leftRightBottom(),
            child: ListView.separated(
              separatorBuilder: (context, index) => const CustomDivider(),
              itemCount: AccountModels.accountCards.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: () {
                    //auth.signOut();
                    // context.setLocale(AppConstant.TR_LOCALE);
                  },
                  child: ListTile(
                    iconColor: Theme.of(context).iconTheme.color,
                    leading: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AccountModels.accountCards[index].leading,
                      ],
                    ),
                    title: Text(
                      AccountModels.accountCards[index].title,
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    trailing: IconEnums.rightarrow.toImage,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
