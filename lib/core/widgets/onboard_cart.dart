import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constant/app_constant.dart';

import '../../view/home/onboarding_page/viewmodel/onboard_model.dart';

class OnBoardCard extends StatelessWidget {
  const OnBoardCard({Key? key, required this.model}) : super(key: key);
  final OnBoardModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          model.title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: cWhiteColor, fontSize: 32, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          model.description,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: cWhiteColor, fontSize: 20, fontWeight: FontWeight.w200),
        ),
        SizedBox(
          height: 15,
        ),
        Image.asset(model.imageWithPath),
      ],
    );
  }
}
