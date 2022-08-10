import 'package:flutter/material.dart';

extension EdgeInsetsExtensions on double {
  EdgeInsets get edgeIntesetsAll => EdgeInsets.all(this);
  EdgeInsets get edgeIntesetsOnlyTop => EdgeInsets.only(top: this);
  EdgeInsets get edgeIntesetsOnlyBottom => EdgeInsets.only(bottom: this);
  EdgeInsets get edgeIntesetsOnlyRight => EdgeInsets.only(right: this);
  EdgeInsets get edgeIntesetsOnlyLeft => EdgeInsets.only(left: this);
  EdgeInsets get edgeIntesetsTopRight =>
      EdgeInsets.only(top: this, right: this);
  EdgeInsets get edgeIntesetsTopLeft => EdgeInsets.only(top: this, left: this);
  EdgeInsets get edgeIntesetsTopBottom =>
      EdgeInsets.only(top: this, bottom: this);
  EdgeInsets get edgeIntesetsBottomLeft =>
      EdgeInsets.only(bottom: this, left: this);
  EdgeInsets get edgeIntesetsBottomRight =>
      EdgeInsets.only(bottom: this, right: this);
  EdgeInsets get edgeIntesetsRightLeft =>
      EdgeInsets.only(right: this, left: this);
  EdgeInsets get edgeIntesetsRightLeftTop =>
      EdgeInsets.only(right: this, left: this, top: this);
  EdgeInsets get edgeIntesetsHorizontal =>
      EdgeInsets.symmetric(horizontal: this);
  EdgeInsets get edgeIntesetsVertical => EdgeInsets.symmetric(vertical: this);
}

extension SizedBoxExtension on double {
  SizedBox get sizedBoxOnlyHeight => SizedBox(height: toDouble());
  SizedBox get sizedBoxOnlyWidth => SizedBox(width: toDouble());
  SizedBox get sizedBox => SizedBox(width: toDouble(), height: toDouble());
}

extension OffsetExtension on double {
  Offset get offsetXY => Offset(this, this);
  Offset get offsetX => Offset(this, 0.0);
  Offset get offsetY => Offset(0.0, this);
}

extension SizeExtension on double {
  Size get sizeFromHeight => Size.fromHeight(this);
}
