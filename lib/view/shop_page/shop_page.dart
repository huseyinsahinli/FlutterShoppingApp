import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extensions/double_extensions.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';
import 'package:nectar_ui/view/shop_page/widgets/custom_dots.dart';
import 'package:nectar_ui/view/shop_page/widgets/custom_stream_builder.dart';

import '../../../core/constant/icon_enum.dart';
import '../../core/init/lang/locale_keys.g.dart';
import '../../core/services/firestore.dart';

@RoutePage()
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Padding(
          padding: const AppPadding.onlyTop(),
          child: Column(
            children: [
              IconEnums.logo.toImage,
              10.0.sizedBoxOnlyHeight,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconEnums.location.toImage,
                  Padding(
                    padding: const AppPadding.onlyLeft(),
                    child: Text(
                      "Istanbul, Zeytinburnu",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const AppPadding.symmetric(),
          child: Column(
            children: [
              StreamBuilder<QuerySnapshot>(
                  stream: FireCloudStore.banner,
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
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CarouselSlider.builder(
                          itemCount: data.size,
                          options: customCarouselOptions(),
                          itemBuilder: (ctx, index, realIdx) {
                            return InkWell(
                              onTap: () {},
                              child: Image.network(
                                data.docs[index]['image'],
                                height: 100,
                                fit: BoxFit.fitWidth,
                              ),
                            );
                          },
                        ),
                        CustomDots(
                          dataSize: data.size,
                          currentIndex: _currentIndex,
                        ),
                      ],
                    );
                  }),
              CustomStreamBuilder(
                title: LocaleKeys.shop_exclusiveOffer.locale,
                stream: FireCloudStore.exclusive,
              ),
              CustomStreamBuilder(
                title: LocaleKeys.shop_topSeller.locale,
                stream: FireCloudStore.topSeller,
              ),
              CustomStreamBuilder(
                title: LocaleKeys.shop_groceries.locale,
                stream: FireCloudStore.groceries,
              ),
              20.0.sizedBoxOnlyHeight,
            ],
          ),
        ),
      ),
    );
  }

  CarouselOptions customCarouselOptions() {
    return CarouselOptions(
      enableInfiniteScroll: true,
      autoPlay: true,
      autoPlayInterval: const Duration(seconds: 5),
      autoPlayAnimationDuration: const Duration(milliseconds: 800),
      pauseAutoPlayOnTouch: true,
      viewportFraction: 0.75,
      height: 100,
      enlargeCenterPage: true,
      onPageChanged: (index, reason) {
        _currentIndex = index;
        setState(() {});
      },
    );
  }
}
