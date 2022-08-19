import 'package:flutter/material.dart';

class ThemeSheet extends StatelessWidget {
  const ThemeSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        ListTile(
          title: Text('Dark Theme'),
          trailing: Switch(
            value: true,
            onChanged: (value) {
              if (value) {
              } else {}
            },
          ),
        ),
        const Divider(),
        ListTile(
          title: Text('Light Theme'),
          trailing: Switch(
            value: false,
            onChanged: (value) {
              if (value) {
              } else {}
            },
          ),
        ),
      ],
    );
  }
}
