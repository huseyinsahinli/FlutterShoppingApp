import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_ui/core/constant/app_constant.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import 'package:nectar_ui/view/authentication_pages/login_page/login_page.dart';

import '../../../core/constant/app_strings.dart';
import '../../../core/constant/icon_enum.dart';
import '../../../core/helper/text_scale_size.dart';
import '../../../core/padding/app_padding.dart';
import '../../../core/widgets/my_custom_column.dart';
import '../../../core/widgets/my_custom_textfield.dart';

class ResetPage extends StatefulWidget {
  ResetPage({Key? key}) : super(key: key);

  @override
  State<ResetPage> createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const AppPadding.symmetric(),
          child: CustomColumn(
            spaceHeight: 20,
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
                      Strings.reset,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      Strings.resetMessage,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
              CustomTextField(
                controller: TextEditingController(),
                hintText: Strings.email,
                prefixIcon: Icons.mail,
                obscureText: false,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    context.screenWidth,
                    context.screenHeight * 0.06,
                  ),
                ),
                onPressed: () async {},
                child: Text(
                  Strings.reset,
                  style: Theme.of(context).textTheme.bodyText1,
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
