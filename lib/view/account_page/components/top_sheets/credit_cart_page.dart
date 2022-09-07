import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nectar_ui/core/constant/app_constant.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';
import 'package:nectar_ui/core/widgets/my_custom_column.dart';

class CreditCartPage extends StatelessWidget {
  const CreditCartPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const AppPadding.all(),
        child: CustomColumn(
          spaceHeight: 10,
          children: [
            SizedBox(
              width: context.screenWidth,
              height: MediaQuery.of(context).size.height * 0.25,
              child: Image.asset(
                'assets/images/png/credit_card.png',
                fit: BoxFit.cover,
              ),
            ),
            CustomColumn(
              spaceHeight: 10,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Kart numarası'),
                    TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: cMainColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: '●●●● ●●●● ●●●● ●●●●',
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Kart üzerindeki isim'),
                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: cMainColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Ad Soyad',
                      ),
                    )
                  ],
                ),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text('Son kullanma tarihi')),
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: context.screenWidth * 0.25,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: cMainColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Ay/Yıl',
                      ),
                    ),
                  ),
                ),
                Row(
                  children: const [
                    Text('Güvenlik kodu'),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.help_outline,
                      color: Colors.black,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: context.screenWidth * 0.45,
                    child: TextField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: cMainColor,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'CVC/CVV',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
              width: context.screenWidth,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Kartı kaydet',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
