import 'package:flutter/rendering.dart';

class AppPadding extends EdgeInsets {
  const AppPadding.onlyTop() : super.only(top: 20);
  const AppPadding.onlyBottom() : super.only(bottom: 20);
  const AppPadding.onlyLeft() : super.only(left: 20);
  const AppPadding.onlyRight() : super.only(right: 20);

  const AppPadding.all() : super.all(20);
  const AppPadding.allLow() : super.all(10);
  const AppPadding.allHigh() : super.all(40);
  const AppPadding.symmetric() : super.symmetric(horizontal: 20, vertical: 20);
  const AppPadding.symmetricOnlyHorizontal() : super.symmetric(horizontal: 20);
  const AppPadding.symmetricOnlyVertical() : super.symmetric(vertical: 20);
  const AppPadding.symmetricLow()
      : super.symmetric(horizontal: 10, vertical: 10);
  const AppPadding.symmetricHigh()
      : super.symmetric(horizontal: 40, vertical: 40);
  const AppPadding.leftRightBottom() : super.fromLTRB(20, 0, 20, 20);

  const AppPadding.leftRightBottomLow() : super.fromLTRB(10, 0, 10, 10);
}
