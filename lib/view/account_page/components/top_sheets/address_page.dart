import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';
import 'package:nectar_ui/core/widgets/address_card.dart';
import 'package:nectar_ui/core/widgets/my_custom_column.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const AppPadding.symmetricOnlyHorizontal(),
        child: SizedBox(
          width: context.screenWidth,
          child: ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Add New Address',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(color: Colors.white),
                ),
                const SizedBox(width: 8),
                const Icon(
                  Icons.add_location_alt_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
      body: const Padding(
          padding: AppPadding.all(),
          child: SingleChildScrollView(
            child: CustomColumn(
              spaceHeight: 10,
              children: [
                AddressCard(
                  addresTitle: 'Home',
                  address: 'Dr.Sadık Ahmet Sk. No:59 Daire:9\nİstanbul, Turkey',
                ),
                AddressCard(
                  addresTitle: 'Work',
                  address: 'Dr.Sadık Ahmet Sk. No:59 Daire:9\nİstanbul, Turkey',
                ),
              ],
            ),
          )),
    );
  }
}
