import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';
import 'package:nectar_ui/view/account_page/components/top_sheets/profile_edit_page.dart';
import '../../../core/constant/app_constant.dart';
import '../../../core/constant/icon_enum.dart';
import '../../../core/widgets/divider.dart';
import '../../core/helper/text_scale_size.dart';
import '../../core/models/account_card_model.dart';
import '../../core/navigator/app_router.dart';
import '../../core/widgets/custom_bottom_sheet.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({
    Key? key,
  }) : super(key: key);
  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  //TODO: Edit components for account page
  FirebaseAuth auth = FirebaseAuth.instance;
  late List<AccountModel> accountCards;

  @override
  void initState() {
    super.initState();
    accountCards = AccountModels.accountCards;
    auth.userChanges().listen((User? user) {
      if (user == null) {
        context.router.replace(LoginRoute());
      } else {}
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
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfileEditPage(),
                                  ));
                            },
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
              shrinkWrap: true,
              separatorBuilder: (context, index) => const CustomDivider(),
              itemCount: accountCards.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                var accountCard = accountCards[index];
                return InkWell(
                  onTap: () {
                    //TODO: buraya gidilecek sayfa yazılacak
                    AccountModels.accountCards[index].bottomSheet ?? false
                        ? ShowSheetMixin.showCustomSheet(
                            context: context,
                            child: accountCard.widget ?? Text('Boş'),
                          )
                        : context.router.push(
                            TransactionRoute(
                              account: AccountModels.accountCards[index],
                            ),
                          );
                  },
                  child: ListTile(
                    iconColor: Theme.of(context).iconTheme.color,
                    leading: accountCard.leading,
                    title: Text(
                      accountCard.title,
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    trailing: IconEnums.rightarrow.toImage,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
