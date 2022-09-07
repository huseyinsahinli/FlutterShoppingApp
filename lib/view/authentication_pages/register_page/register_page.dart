import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:nectar_ui/core/constant/app_constant.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/navigator/app_router.dart';
import 'package:nectar_ui/core/widgets/divider.dart';

import '../../../core/constant/icon_enum.dart';
import '../../../core/helper/text_scale_size.dart';
import '../../../core/init/lang/locale_keys.g.dart';
import '../../../core/padding/app_padding.dart';
import '../../../core/widgets/my_custom_column.dart';
import '../../../core/widgets/custom_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _password = TextEditingController();
  final TextEditingController _retypePassword = TextEditingController();
  final TextEditingController _email = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const AppPadding.symmetric(),
          child: CustomColumn(
            spaceHeight: 10,
            children: [
              SizedBox(
                height: context.screenHeight * 0.15,
                width: context.screenWidth * 0.15,
                child: SvgPicture.asset(
                  IconEnums.logo.toPathSvg,
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
                      LocaleKeys.auth_signUp_title.locale,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      LocaleKeys.auth_signUp_subtitle.locale,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
              CustomTextField(
                controller: TextEditingController(),
                hintText: LocaleKeys.auth_hintName.locale,
                prefixIcon: Icons.lock,
                obscureText: false,
              ),
              CustomTextField(
                controller: _email,
                hintText: LocaleKeys.auth_email.locale,
                prefixIcon: Icons.email,
                obscureText: false,
              ),
              CustomTextField(
                controller: _password,
                hintText: LocaleKeys.auth_password.locale,
                prefixIcon: Icons.lock,
                obscureText: true,
              ),
              CustomTextField(
                controller: _retypePassword,
                hintText: LocaleKeys.auth_confirmPassword.locale,
                prefixIcon: Icons.lock,
                obscureText: true,
              ),
              const SizedBox(height: 10),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: LocaleKeys.auth_signUp_terms1.locale,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    TextSpan(
                      text: LocaleKeys.auth_signUp_terms2.locale,
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: cMainColor,
                          ),
                    ),
                    TextSpan(
                      text: LocaleKeys.auth_signUp_terms3.locale,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    TextSpan(
                      text: LocaleKeys.auth_signUp_terms4.locale,
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: cMainColor,
                          ),
                    ),
                  ],
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
                  if (_email.text.isNotEmpty &&
                      _password.text.isNotEmpty &&
                      _retypePassword.text.isNotEmpty) {
                    if (_password.text.toString() ==
                        _retypePassword.text.toString()) {
                      try {
                        UserCredential userCredential = await FirebaseAuth
                            .instance
                            .createUserWithEmailAndPassword(
                          email: _email.text.toString(),
                          password: _password.text.toString(),
                        );
                        if (userCredential.user != null) {
                          context.router.replace(const HomeRoute());
                        }
                      } on FirebaseAuthException catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(e.code.toString()),
                            backgroundColor: Colors.red,
                          ),
                        );
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(e.toString()),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              LocaleKeys.auth_signUp_passwordNotMatch.locale),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          LocaleKeys.auth_signUp_fillAllFields.locale,
                        ),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
                child: Text(
                  LocaleKeys.auth_signUp_title.locale,
                  style: Theme.of(context).textTheme.bodyText1,
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    LocaleKeys.auth_signUp_alreadyHaveAccount.locale,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  TextButton(
                    onPressed: () {
                      context.router.replace(const LoginRoute());
                    },
                    child: Text(
                      LocaleKeys.auth_signIn_title.locale,
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: cMainColor,
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ),
                ],
              ),
              Text(
                LocaleKeys.auth_signUp_orSignUpWithScoial.locale,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const CustomDivider(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).backgroundColor,
                    side: const BorderSide(
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
                        LocaleKeys.auth_signUp_google.locale,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: cMainColor,
                            ),
                        textScaleFactor: ScaleSize.textScaleFactor(context),
                      )
                    ],
                  )),
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
