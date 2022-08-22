import 'package:flutter/material.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';

import '../../../../core/constant/app_constant.dart';
import '../../../../core/constant/icon_enum.dart';
import '../../../../core/helper/text_scale_size.dart';

class ProfileDetailsPage extends StatelessWidget {
  const ProfileDetailsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const AppPadding.all(),
            child: Text(
              'Name: Huseyin Sahinli',
              style: Theme.of(context).textTheme.headline3,
              textScaleFactor: ScaleSize.textScaleFactor(context),
            ),
          ),
          Padding(
              padding: const AppPadding.all(),
              child: Text(
                'Email: huseyinsahinli01@gmail.com',
                style: Theme.of(context).textTheme.headline3,
                textScaleFactor: ScaleSize.textScaleFactor(context),
              )),
          Padding(
            padding: const AppPadding.all(),
            child: Text(
              'Phone: +90 *** *** 7890',
              style: Theme.of(context).textTheme.headline3,
              textScaleFactor: ScaleSize.textScaleFactor(context),
            ),
          ),
          Padding(
            padding: const AppPadding.all(),
            child: Text(
              'Address: Istanbul, Turkey',
              style: Theme.of(context).textTheme.headline3,
              textScaleFactor: ScaleSize.textScaleFactor(context),
            ),
          ),
          Padding(
            padding: const AppPadding.all(),
            child: Text(
              'Birthday: 01/01/1990',
              style: Theme.of(context).textTheme.headline3,
              textScaleFactor: ScaleSize.textScaleFactor(context),
            ),
          ),
          Padding(
            padding: const AppPadding.all(),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // go to edit page
                },
                child: Text(
                  'Edit',
                  style: Theme.of(context).textTheme.bodyText1,
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
