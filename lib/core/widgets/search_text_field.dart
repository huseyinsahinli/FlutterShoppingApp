import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/init/lang/locale_keys.g.dart';

class SearchBarTextField extends StatelessWidget {
  const SearchBarTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      decoration: InputDecoration(
        hintText: LocaleKeys.search_title.locale,
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.black,
        ),
      ),
    );
  }
}
