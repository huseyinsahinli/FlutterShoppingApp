import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';

import '../constant/app_constant.dart';
import '../constant/icon_enum.dart';
import '../helper/text_scale_size.dart';

class HorizontalListView extends StatelessWidget {
  final QuerySnapshot data;
  const HorizontalListView({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        cacheExtent: 250,
        itemExtent: 170,
        itemCount: data.size,
        itemBuilder: (context, index) {
          var dataItems = data.docs[index];
          return Padding(
            padding: const AppPadding.onlyRight(),
            child: InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: const Color(0xffE2E2E2),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: Padding(
                  padding: const AppPadding.allLow(),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(18),
                              topRight: Radius.circular(18),
                            ),
                            child: Image(
                              image: NetworkImage(
                                dataItems['image'],
                              ),
                              fit: BoxFit.cover,
                              width: context.screenWidth,
                              height: 100,
                            ),
                          ),
                          // Image.network(
                          //   dataItems['image'],
                          //   height: 100,
                          //   width: context.screenWidth,
                          //   fit: BoxFit.cover,
                          // ),
                          Padding(
                            padding: const AppPadding.onlyTop(),
                            child: SizedBox(
                              width: context.screenWidth,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    dataItems['name'],
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                    textScaleFactor:
                                        ScaleSize.textScaleFactor(context),
                                  ),
                                  Text(
                                    "355ml,Price",
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
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
                              onPrimary: Colors.black,
                              primary: cMainColor,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17.0),
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
              ),
            ),
          );
        },
      ),
    );
  }
}
