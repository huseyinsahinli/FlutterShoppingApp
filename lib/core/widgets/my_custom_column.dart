import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  final double spaceHeight;
  List<Widget> children;
  CustomColumn({
    Key? key,
    required this.spaceHeight,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: children
          .map((e) => Padding(
                padding: EdgeInsets.only(top: spaceHeight),
                child: e,
              ))
          .toList(),
    );
  }
}
