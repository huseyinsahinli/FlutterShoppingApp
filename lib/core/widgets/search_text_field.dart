import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constant/app_strings.dart';

class SearchBarTextField extends StatelessWidget {
  const SearchBarTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      autofocus: false,
      decoration: InputDecoration(
          hintText: Strings.searchStore,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
          )),
    );
  }
}
