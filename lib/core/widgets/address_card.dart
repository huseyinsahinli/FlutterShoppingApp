import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';

import '../constant/app_constant.dart';
import '../padding/app_padding.dart';

class AddressCard extends StatelessWidget {
  final String addresTitle;
  final String address;
  const AddressCard(
      {Key? key, required this.addresTitle, required this.address})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: Colors.blueGrey.shade900,
          width: 1,
        ),
      ),
      child: Stack(
        children: [
          Container(
            height: context.screenHeight * 0.25,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12)),
              image: DecorationImage(
                image: AssetImage('assets/images/png/gps.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              decoration: const BoxDecoration(
                color: cMainColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Padding(
                padding: const AppPadding.allLow(),
                child: Text(
                  addresTitle,
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: context.screenWidth - 48,
              decoration: const BoxDecoration(
                color: cMainColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Padding(
                padding: const AppPadding.allLow(),
                child: Text(
                  address,
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Colors.white,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
