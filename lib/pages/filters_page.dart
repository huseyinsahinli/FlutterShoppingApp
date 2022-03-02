import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nectar_ui/utilities/constants.dart';
import 'package:nectar_ui/utilities/image_path.dart';

class FilterPage extends StatefulWidget {
  FilterPage({Key? key}) : super(key: key);

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
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Filters",
          style: cMainTitleStyle,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.close),
          color: Colors.black,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xffF2F3F2),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w900),
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
                                  print(value);
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
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Brand",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w900),
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
                                  print(value);
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
