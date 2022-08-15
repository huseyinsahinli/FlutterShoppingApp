import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:nectar_ui/core/constant/app_constant.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import 'package:nectar_ui/core/navigator/app_router.dart';
import 'package:nectar_ui/core/widgets/divider.dart';
import 'package:nectar_ui/view/authentication_pages/login_page/login_page.dart';

import '../../../core/constant/app_strings.dart';
import '../../../core/constant/icon_enum.dart';
import '../../../core/helper/text_scale_size.dart';
import '../../../core/padding/app_padding.dart';
import '../../../core/widgets/my_custom_column.dart';
import '../../../core/widgets/my_custom_textfield.dart';
import '../../home_page/home_page.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _password = TextEditingController();
  TextEditingController _retypePassword = TextEditingController();
  TextEditingController _email = TextEditingController();
  bool _isHiddenPassword = true;
  bool _isHiddenRetypePassword = true;
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
            spaceHeight: 10,
            children: [
              SizedBox(
                height: context.screenHeight * 0.15,
                width: context.screenWidth * 0.15,
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
                      Strings.register,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      Strings.registerMessage,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
              CustomTextField(
                controller: TextEditingController(),
                hintText: 'Name',
                prefixIcon: Icons.lock,
                obscureText: false,
              ),
              CustomTextField(
                controller: _email,
                hintText: 'Email',
                prefixIcon: Icons.email,
                obscureText: false,
              ),
              CustomTextField(
                controller: _password,
                hintText: 'Password',
                prefixIcon: Icons.lock,
                obscureText: true,
              ),
              CustomTextField(
                controller: _retypePassword,
                hintText: 'Confirm Password',
                prefixIcon: Icons.lock,
                obscureText: true,
              ),
              const SizedBox(height: 10),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'By creating an account, you agree to our ',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    TextSpan(
                      text: 'Terms of Service',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: cMainColor,
                          ),
                    ),
                    TextSpan(
                      text: ' and ',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
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
                      } on FirebaseAuthException catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(e.code.toString()),
                            backgroundColor: Colors.red,
                          ),
                        );
                      } catch (e) {
                        print(e);
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Passwords do not match.'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            'Fill in all required fields with your information.'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
                child: Text(
                  Strings.signUp,
                  style: Theme.of(context).textTheme.bodyText1,
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Strings.alreadyHaveAccount,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  TextButton(
                    onPressed: () {
                      context.router.replace(LoginRoute());
                    },
                    child: Text(
                      Strings.signIn,
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: cMainColor,
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ),
                ],
              ),
              Text(
                'Or sign up with social media',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const CustomDivider(),
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
                        "  Sign up with Google",
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
