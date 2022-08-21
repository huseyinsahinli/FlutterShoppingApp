import 'package:flutter/material.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';
import 'package:nectar_ui/core/widgets/my_custom_column.dart';

import '../../../../core/helper/text_scale_size.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.all(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                'Nectar Shop',
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: Colors.green,
                    ),
                textScaleFactor: ScaleSize.textScaleFactor(context),
                textAlign: TextAlign.center,
              ),
              Text(
                'An e-commerce application that I have made with the knowledge I have gained about how the classic e-commerce applications used today work in Flutter.',
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
                textScaleFactor: ScaleSize.textScaleFactor(context),
              ),
            ],
          ),
          Text(
            'Contact me at\nhuseyinsahinli01@gmail.com',
            style: Theme.of(context).textTheme.headline3,
            textScaleFactor: ScaleSize.textScaleFactor(context),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
