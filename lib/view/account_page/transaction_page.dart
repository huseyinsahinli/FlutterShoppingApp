import 'package:flutter/material.dart';
import 'package:nectar_ui/core/models/account_card_model.dart';

class TransactionPage extends StatefulWidget {
  final AccountModel account;
  TransactionPage({Key? key, required this.account}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.account.title),
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
        ),
        body: Center(
          child: widget.account.widget ?? Text('Boş'),
        ));
  }
}
