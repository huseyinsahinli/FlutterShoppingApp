import 'package:flutter/material.dart';
import 'package:nectar_ui/core/widgets/divider.dart';

class ThemePage extends StatefulWidget {
  final String tittle;
  ThemePage({Key? key, required this.tittle}) : super(key: key);

  @override
  State<ThemePage> createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.tittle),
          centerTitle: true,
          elevation: 12,
        ),
        body: Container(
          color: Theme.of(context).backgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(60),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Light Theme",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
