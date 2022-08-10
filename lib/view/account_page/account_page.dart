import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';

import '../../../core/constant/app_constant.dart';
import '../../../core/constant/icon_enum.dart';
import '../../../core/widgets/divider.dart';
import '../../core/models/account_card_model.dart';

class AccountPage extends StatefulWidget {
  AccountPage({
    Key? key,
  }) : super(key: key);
  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
                          SizedBox(
                            width: context.screenWidth * 0.5,
                            child: FittedBox(
                              child: Text(
                                "Hüseyin Şahinli",
                                style: Theme.of(context).textTheme.headline1,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: IconEnums.pencil.toImage,
                          )
                        ],
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.5,
                        child: FittedBox(
                          child: Text(
                            "huseyinsahinli01@gmail.com",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
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
                return ListTile(
                  iconColor: Theme.of(context).iconTheme.color,
                  leading: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AccountModels.accountCards[index].leading,
                    ],
                  ),
                  title: SizedBox(
                    height: context.screenHeight * 0.03,
                    child: FittedBox(
                      alignment: Alignment.topLeft,
                      child: Text(
                        AccountModels.accountCards[index].title,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                  ),
                  trailing: IconEnums.rightarrow.toImage,
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
