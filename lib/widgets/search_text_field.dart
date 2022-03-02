import 'package:flutter/material.dart';
import 'package:nectar_ui/utilities/strings.dart';

import '../utilities/constants.dart';

class SearchBarTextField extends StatelessWidget {
  const SearchBarTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      style: cExploreSearchTextStyle,
      decoration: InputDecoration(
        filled: true,
        hintText: Strings.searchStore,
        hintStyle: cExploreSearchHintStyle,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(width: 0.0, style: BorderStyle.none)),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.black,
        ),
      ),
    );
  }
}
