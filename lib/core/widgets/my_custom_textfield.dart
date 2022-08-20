import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  bool obscureText;
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
      controller: widget.controller,
      enableSuggestions: false,
      autocorrect: false,
      obscureText: widget.obscureText,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            color: Colors.black,
            decoration: TextDecoration.none,
            fontSize: 17,
          ),
      decoration: InputDecoration(
        fillColor: Colors.white,
        floatingLabelStyle:
            Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 18),
        labelText: widget.hintText,
        filled: true,
        suffixIcon: widget.hintText == 'Password'
            ? IconButton(
                icon: Icon(
                  widget.obscureText ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    widget.obscureText = !widget.obscureText;
                  });
                },
              )
            : null,
        border: const UnderlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
