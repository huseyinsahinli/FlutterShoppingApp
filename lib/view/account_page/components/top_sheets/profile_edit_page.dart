import 'package:flutter/material.dart';

import '../../../../core/constant/app_constant.dart';
import '../../../../core/helper/text_scale_size.dart';
import '../../../../core/padding/app_padding.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile Edit',
          textScaleFactor: ScaleSize.textScaleFactor(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const AppPadding.all(),
          child: Column(
            children: [
              InkWell(
                onTap: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
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
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Chose profile picture",
                      style: Theme.of(context).textTheme.bodyText2,
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: Theme.of(context).textTheme.bodyText2,
                    textScaleFactor: ScaleSize.textScaleFactor(context),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter new name",
                      hintStyle: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: Theme.of(context).textTheme.bodyText2,
                    textScaleFactor: ScaleSize.textScaleFactor(context),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter new email",
                      hintStyle: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style: Theme.of(context).textTheme.bodyText2,
                    textScaleFactor: ScaleSize.textScaleFactor(context),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter new password",
                      hintStyle: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Confirm Password",
                    style: Theme.of(context).textTheme.bodyText2,
                    textScaleFactor: ScaleSize.textScaleFactor(context),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter new password again",
                      hintStyle: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Phone",
                    style: Theme.of(context).textTheme.bodyText2,
                    textScaleFactor: ScaleSize.textScaleFactor(context),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter new phone",
                      hintStyle: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Address",
                    style: Theme.of(context).textTheme.bodyText2,
                    textScaleFactor: ScaleSize.textScaleFactor(context),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter new address",
                      hintStyle: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "City",
                    style: Theme.of(context).textTheme.bodyText2,
                    textScaleFactor: ScaleSize.textScaleFactor(context),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter new city",
                      hintStyle: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "State",
                    style: Theme.of(context).textTheme.bodyText2,
                    textScaleFactor: ScaleSize.textScaleFactor(context),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter new state",
                      hintStyle: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Zip Code",
                    style: Theme.of(context).textTheme.bodyText2,
                    textScaleFactor: ScaleSize.textScaleFactor(context),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter new zip code",
                      hintStyle: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Country",
                    style: Theme.of(context).textTheme.bodyText2,
                    textScaleFactor: ScaleSize.textScaleFactor(context),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter new country",
                      hintStyle: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Birthday",
                    style: Theme.of(context).textTheme.bodyText2,
                    textScaleFactor: ScaleSize.textScaleFactor(context),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter new birthday",
                      hintStyle: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
