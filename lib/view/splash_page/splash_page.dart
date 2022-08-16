import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constant/icon_enum.dart';
import 'package:nectar_ui/core/navigator/app_router.dart';

import '../../../core/constant/app_constant.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      FirebaseAuth.instance.idTokenChanges().listen((User? user) {
        if (user == null) {
          context.router.replace(const OnBoardRoute());
        } else {
          context.router.replace(HomeRoute());
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: cMainColor,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconEnums.whiteLogo.toImage,
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "nectar",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: cWhiteColor,
                          fontSize: 64,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "online groceries",
                      style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 3.75,
                          color: cWhiteColor,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomSheet: const LinearProgressIndicator(
        backgroundColor: cMainColor,
        color: cWhiteColor,
      ),
    );
  }
}
