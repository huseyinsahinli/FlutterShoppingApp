import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar_ui/core/models/account_card_model.dart';

import '../../core/widgets/divider.dart';

@RoutePage()
class TransactionPage extends StatefulWidget {
  final AccountModel account;
  const TransactionPage({super.key, required this.account});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(4.0),
            child: CustomDivider(),
          ),
          title: Text(widget.account.title),
        ),
        body: widget.account.widget ?? const Text('Boş'));
  }
}
