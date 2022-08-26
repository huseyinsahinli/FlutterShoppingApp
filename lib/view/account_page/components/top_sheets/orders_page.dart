import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          title: Text('Order 1'),
          subtitle: Text('Status: Completed'),
          trailing: Text('\$100'),
        ),
        ListTile(
          title: Text('Order 2'),
          subtitle: Text('Status: Completed'),
          trailing: Text('\$100'),
        ),
        ListTile(
          title: Text('Order 3'),
          subtitle: Text('Status: Completed'),
          trailing: Text('\$100'),
        ),
        ListTile(
          title: Text('Order 4'),
          subtitle: Text('Status: Completed'),
          trailing: Text('\$100'),
        ),
        ListTile(
          title: Text('Order 5'),
          subtitle: Text('Status: Completed'),
          trailing: Text('\$100'),
        ),
        ListTile(
          title: Text('Order 6'),
          subtitle: Text('Status: Completed'),
          trailing: Text('\$100'),
        ),
        ListTile(
          title: Text('Order 7'),
          subtitle: Text('Status: Completed'),
          trailing: Text('\$100'),
        ),
        ListTile(
          title: Text('Order 8'),
          subtitle: Text('Status: Completed'),
          trailing: Text('\$100'),
        ),
        ListTile(
          title: Text('Order 9'),
          subtitle: Text('Status: Completed'),
          trailing: Text('\$100'),
        ),
        ListTile(
          title: Text('Order 10'),
          subtitle: Text('Status: Completed'),
          trailing: Text('\$100'),
        ),
      ],
    );
  }
}
