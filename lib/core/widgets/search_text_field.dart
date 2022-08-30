import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constant/app_constant.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/init/lang/locale_keys.g.dart';

import '../constant/icon_enum.dart';

class SearchBarTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const SearchBarTextField(
      {Key? key, required this.controller, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      controller: controller,
      style: Theme.of(context).textTheme.subtitle2,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: cMainColor,
            width: 1.0,
          ),
        ),
        //TODO: kategorilere göre arama yapılabilir.
        hintText: LocaleKeys.search_search.locale,
        prefixIcon: const Icon(Icons.search, color: Colors.grey),
        suffixIcon: controller.text.isNotEmpty
            ? IconButton(
                color: Colors.grey,
                icon: IconEnums.delete.toImage,
                onPressed: () => controller.clear(),
              )
            : null,
      ),
    );
  }
}
