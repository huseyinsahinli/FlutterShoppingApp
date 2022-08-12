import 'package:flutter/material.dart';
import 'package:nectar_ui/core/constant/app_constant.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  late bool obscureText;
  final Function()? onChanged;
  CustomTextField({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    required this.obscureText,
    required this.controller,
    this.onChanged,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: cMainColor,
      controller: widget.controller,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        labelText: widget.hintText,
        labelStyle: Theme.of(context).textTheme.bodyText2,
        floatingLabelStyle: const TextStyle(
          color: cMainColor,
          fontSize: 20,
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: cMainColor,
            width: 2,
          ),
        ),
        focusColor: cMainColor,
        fillColor: cWhiteColor,
        filled: true,
        prefixIcon: Icon(
          widget.prefixIcon,
          color: cMainColor,
        ),
        suffixIcon: widget.hintText == 'Password'
            ? IconButton(
                icon: Icon(
                  widget.obscureText ? Icons.visibility : Icons.visibility_off,
                  color: cMainColor,
                ),
                onPressed: () {
                  setState(() {
                    widget.obscureText = !widget.obscureText;
                  });
                },
              )
            : null,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: cMainColor,
              width: 1,
            )),
      ),
    );
  }
}
