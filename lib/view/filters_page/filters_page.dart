import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extensions/double_extensions.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';

import '../../../core/constant/app_constant.dart';
import '../../../core/constant/icon_enum.dart';
import '../../core/init/lang/locale_keys.g.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  var isChecked = false;
  var tmpArray = [];
  Map<String, bool> values = {
    'Eggs': true,
    'Noodles & Pasta': false,
    'Chips & Crisps': false,
    'Fast Food': false,
  };
  Map<String, bool> brandValues = {
    'Individual Callection': false,
    'Cocola': true,
    'Ifad': false,
    'Kazi farmas': false,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.filter_title.locale,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: IconEnums.close.toImage,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xffF2F3F2),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const AppPadding.symmetric(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Categories",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  ListView(
                      shrinkWrap: true,
                      children: values.keys.map((String key) {
                        return Row(
                          children: [
                            Transform.scale(
                              scale: 1.3,
                              child: Checkbox(
                                checkColor: Colors.white,
                                fillColor:
                                    MaterialStateProperty.all(cMainColor),
                                activeColor: cMainColor,
                                value: values[key],
                                side: const BorderSide(
                                  // set border color here
                                  color: Color(0xffC2C2C2),
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6)),
                                onChanged: (bool? value) {
                                  setState(() {
                                    values[key] = value!;
                                  });
                                },
                              ),
                            ),
                            Text(
                              key,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                  color:
                                      values[key]! ? cMainColor : cTextColor),
                            )
                          ],
                        );
                      }).toList()),
                  40.0.sizedBoxOnlyHeight,
                  Text(
                    "Brand",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  ListView(
                      shrinkWrap: true,
                      children: brandValues.keys.map((String key) {
                        return Row(
                          children: [
                            Transform.scale(
                              scale: 1.3,
                              child: Checkbox(
                                side: const BorderSide(
                                  // set border color here
                                  color: Color(0xffC2C2C2),
                                ),
                                checkColor: Colors.white,
                                fillColor:
                                    MaterialStateProperty.all(cMainColor),
                                value: brandValues[key],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6)),
                                onChanged: (bool? value) {
                                  setState(() {
                                    brandValues[key] = value!;
                                  });
                                },
                              ),
                            ),
                            Text(
                              key,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                  color: brandValues[key]!
                                      ? cMainColor
                                      : cTextColor),
                            )
                          ],
                        );
                      }).toList()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
