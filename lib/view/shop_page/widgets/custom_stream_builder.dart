import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nectar_ui/view/shop_page/widgets/custom_title_and_button.dart';

import '../../../core/widgets/horizontal_list_view_builder.dart';

class CustomStreamBuilder extends StatelessWidget {
  final String title;
  final Stream<QuerySnapshot> stream;
  const CustomStreamBuilder({
    Key? key,
    required this.stream,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: stream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final data = snapshot.requireData;
          return Column(
            children: [
              CustomTitleAndButton(
                title: title,
                data: data,
              ),
              HorizontalListView(data: data),
            ],
          );
        });
  }
}
