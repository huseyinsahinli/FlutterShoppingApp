import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_ui/core/constant/app_border_radius.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import 'package:nectar_ui/core/navigator/app_router.dart';

import '../../../core/constant/app_constant.dart';
import '../../../core/constant/icon_enum.dart';
import '../../../core/helper/text_scale_size.dart';
import '../../../core/padding/app_padding.dart';

class SeeAllPage extends StatefulWidget {
  final QuerySnapshot data;
  final String title;
  const SeeAllPage({Key? key, required this.title, required this.data})
      : super(key: key);

  @override
  State<SeeAllPage> createState() => _SeeAllPageState();
}

class _SeeAllPageState extends State<SeeAllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const AppPadding.symmetricLow(),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: context.screenWidth * 0.5,
            mainAxisExtent: context.screenHeight * 0.5 <= 270
                ? context.screenHeight * 0.5
                : 270,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: widget.data.size,
          itemBuilder: (BuildContext ctx, index) {
            var dataItems = widget.data.docs[index];
            return InkWell(
              onTap: () {
                FocusScope.of(context).unfocus();
                context.router.push(ProductDetailsRoute(data: dataItems));
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: const Color(0xffE2E2E2),
                    width: 1,
                  ),
                  borderRadius: AppBorderRadius.circular20,
                ),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: AppBorderRadius.topLeftRight20,
                          child: Image(
                            image: NetworkImage(
                              dataItems['image'],
                            ),
                            fit: BoxFit.cover,
                            width: context.screenWidth,
                            height: 100,
                          ),
                        ),
                        Padding(
                          padding: const AppPadding.onlyTop(),
                          child: SizedBox(
                            width: context.screenWidth,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  dataItems['name'],
                                  style: Theme.of(context).textTheme.subtitle2,
                                  textScaleFactor:
                                      ScaleSize.textScaleFactor(context),
                                ),
                                Text(
                                  "355ml,Price",
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textScaleFactor:
                                      ScaleSize.textScaleFactor(context),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      child: Text(
                        "\$${dataItems['price']}",
                        style: Theme.of(context).textTheme.headline1,
                        textAlign: TextAlign.right,
                        textScaleFactor: ScaleSize.textScaleFactor(context),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: SizedBox(
                        width: 45,
                        height: 45,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: cMainColor,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: AppBorderRadius.circular20,
                            ),
                          ),
                          onPressed: () {},
                          child: SvgPicture.asset(
                            IconEnums.plus.toPathSvg,
                            height: 17,
                            color: cWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
