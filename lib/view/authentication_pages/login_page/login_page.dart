import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:nectar_ui/core/constant/app_constant.dart';
import 'package:nectar_ui/core/constant/icon_enum.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import 'package:nectar_ui/core/helper/text_scale_size.dart';
import 'package:nectar_ui/core/navigator/app_router.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';
import 'package:nectar_ui/core/widgets/my_custom_column.dart';
import 'package:nectar_ui/core/widgets/my_custom_textfield.dart';

import '../../../core/constant/app_strings.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _password = TextEditingController();
  final TextEditingController _email = TextEditingController();
  bool _isHidden = true;
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();
    auth.userChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        context.router.replace(HomeRoute());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const AppPadding.symmetric(),
          child: CustomColumn(
            spaceHeight: 20,
            children: [
              SizedBox(
                height: context.screenHeight * 0.25,
                width: context.screenWidth * 0.25,
                child: SvgPicture.asset(
                  IconEnums.logo.toPath,
                  fit: BoxFit.contain,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.signIn,
                      style: Theme.of(context).textTheme.headline1,
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    ),
                    Text(
                      Strings.loginMessage,
                      style: Theme.of(context).textTheme.bodyText2,
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    ),
                  ],
                ),
              ),
              CustomTextField(
                hintText: Strings.email,
                prefixIcon: Icons.mail,
                controller: _email,
                obscureText: false,
              ),
              CustomTextField(
                hintText: Strings.password,
                prefixIcon: Icons.lock,
                controller: _password,
                obscureText: true,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    context.router.replace(ResetRoute());
                  },
                  child: Text(
                    Strings.forgotPassword,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    context.screenWidth,
                    context.screenHeight * 0.06,
                  ),
                ),
                onPressed: () async {
                  try {
                    await auth.signInWithEmailAndPassword(
                        email: _email.text.toString().trimRight(),
                        password: _password.text.toString());
                  } on FirebaseAuthException catch (e) {
                    print(e.toString());
                  }
                },
                child: Text(
                  Strings.signIn,
                  style: Theme.of(context).textTheme.bodyText1,
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                ),
              ),
              TextButton(
                onPressed: () {
                  context.router.replace(RegisterRoute());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Strings.dontHaveAccount,
                      style: Theme.of(context).textTheme.bodyText2,
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    ),
                    Text(
                      Strings.signUp,
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: cMainColor,
                          ),
                      textScaleFactor: ScaleSize.textScaleFactor(context),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: cWhiteColor,
                    side: BorderSide(
                      color: cMainColor,
                      width: 1,
                    ),
                    fixedSize: Size(
                      context.screenWidth,
                      context.screenHeight * 0.06,
                    ),
                  ),
                  onPressed: () {
                    try {
                      signInWithGoogle();
                    } on FirebaseAuthException catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(e.code.toString()),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/png/google.png",
                        fit: BoxFit.contain,
                      ),
                      Text(
                        " Sign in with Google",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: cMainColor,
                            ),
                        textScaleFactor: ScaleSize.textScaleFactor(context),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
