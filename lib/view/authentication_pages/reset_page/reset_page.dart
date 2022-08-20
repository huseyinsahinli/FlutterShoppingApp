import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';

import '../../../core/constant/icon_enum.dart';
import '../../../core/helper/text_scale_size.dart';
import '../../../core/init/lang/locale_keys.g.dart';
import '../../../core/padding/app_padding.dart';
import '../../../core/widgets/my_custom_column.dart';
import '../../../core/widgets/my_custom_textfield.dart';

class ResetPage extends StatefulWidget {
  const ResetPage({Key? key}) : super(key: key);

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
                      LocaleKeys.auth_reset_title.locale,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      LocaleKeys.auth_reset_subtitle.locale,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
              CustomTextField(
                controller: TextEditingController(),
                hintText: LocaleKeys.auth_email.locale,
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
                  LocaleKeys.auth_reset_title.locale,
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
