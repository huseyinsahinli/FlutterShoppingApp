import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constant/app_constant.dart';

import '../../view/onboarding_page/viewmodel/onboard_model.dart';
import '../helper/text_scale_size.dart';
import 'my_custom_column.dart';

class OnBoardCard extends StatelessWidget {
  final OnBoardModel model;
  const OnBoardCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomColumn(
      spaceHeight: 15.0,
      children: [
        Text(
          model.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline1!.copyWith(
                color: cWhiteColor,
              ),
          textScaleFactor: ScaleSize.textScaleFactor(context),
        ),
        Text(
          model.description,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline2!.copyWith(
                color: cWhiteColor,
              ),
          textScaleFactor: ScaleSize.textScaleFactor(context),
        ),
        model.image
      ],
    );
  }
}
