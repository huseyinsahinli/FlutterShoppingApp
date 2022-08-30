import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';
import '../../../core/constant/app_constant.dart';
import '../../../core/constant/icon_enum.dart';
import '../../core/helper/text_scale_size.dart';
import '../../core/navigator/app_router.dart';
import '../../core/services/firestore.dart';

class SearchDetailsPage extends StatefulWidget {
  final String title;
  final String id;
  const SearchDetailsPage({Key? key, required this.title, required this.id})
      : super(key: key);

  @override
  State<SearchDetailsPage> createState() => _SearchDetailsPageState();
}

class _SearchDetailsPageState extends State<SearchDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), actions: [
        IconButton(
          onPressed: () {
            context.router.push(const FilterRoute());
          },
          icon: IconEnums.filter.toImage,
        )
      ]),
      body: Padding(
        padding: const AppPadding.symmetricLow(),
        child: StreamBuilder<QuerySnapshot>(
            stream: FireCloudStore.categoryProducts(widget.id),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              final data = snapshot.requireData;
              return GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: context.screenWidth * 0.5,
                  mainAxisExtent: context.screenHeight * 0.5 <= 270
                      ? context.screenHeight * 0.5
                      : 270,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: data.size,
                itemBuilder: (BuildContext ctx, index) {
                  var dataItems = data.docs[index];
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
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Padding(
                        padding: const AppPadding.all(),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                  child: Image(
                                    image: NetworkImage(
                                      dataItems['image'],
                                    ),
                                    fit: BoxFit.cover,
                                    width: context.screenWidth,
                                    height: 120,
                                  ),
                                ),
                                Text(
                                  dataItems['name'],
                                  style: Theme.of(context).textTheme.subtitle2,
                                  textScaleFactor:
                                      ScaleSize.textScaleFactor(context),
                                ),
                                Text(
                                  "355ml,Price",
                                  style: Theme.of(context).textTheme.bodyText2,
                                  textAlign: TextAlign.center,
                                  textScaleFactor:
                                      ScaleSize.textScaleFactor(context),
                                )
                              ],
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
                            Positioned(
                              left: 0,
                              bottom: 0,
                              child: Padding(
                                padding:
                                    const AppPadding.symmetricOnlyVertical(),
                                child: Text(
                                  "\$ ${dataItems['price']}",
                                  style: Theme.of(context).textTheme.subtitle2,
                                  textScaleFactor:
                                      ScaleSize.textScaleFactor(context),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }),
      ),
    );
  }
}
