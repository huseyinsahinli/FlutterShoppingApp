import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import 'package:nectar_ui/core/extensions/double_extensions.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';
import 'package:nectar_ui/view/detalis_page/product_detail_page.dart';

import '../../../core/constant/app_constant.dart';
import '../../../core/constant/app_strings.dart';
import '../../../core/constant/icon_enum.dart';
import '../../../core/constant/image_path.dart';
import '../../../core/widgets/divider.dart';
import '../filters_page/filters_page.dart';

class SearchDetail extends StatelessWidget {
  final String title;
  SearchDetail({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FilterPage()));
            },
            icon: IconEnums.filter.toImage,
          )
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(4),
          child: CustomDivider(),
        ),
      ),
      body: Padding(
        padding: const AppPadding.symmetricLow(),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: context.screenWidth * 0.5,
            mainAxisExtent: context.screenHeight * 0.3 <= 275
                ? 275
                : context.screenHeight * 0.35,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: 8,
          itemBuilder: (BuildContext ctx, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetails(),
                  ),
                );
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    10.0.sizedBoxOnlyHeight,
                    Image.asset(
                      ImagePath.exploreListImagePath[index],
                      height: context.screenHeight * 0.15,
                      fit: BoxFit.contain,
                    ),
                    Padding(
                      padding: const AppPadding.symmetricOnlyHorizontal(),
                      child: Column(
                        children: [
                          FittedBox(
                            child: Text(
                              Strings.exploreListHeads[index],
                              style: Theme.of(context).textTheme.subtitle1,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          FittedBox(
                            child: Text(
                              "355ml,Price",
                              style: Theme.of(context).textTheme.bodyText2,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const AppPadding.symmetric(),
                      child: SizedBox(
                        height: context.screenHeight * 0.05,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: FittedBox(
                                child: Text(
                                  "\$1.10",
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                              ),
                            ),
                            Spacer(),
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  onPrimary: Colors.black,
                                  primary: cMainColor,
                                  shape: StadiumBorder(),
                                ),
                                onPressed: () {},
                                child: SvgPicture.asset(
                                  IconEnums.plus.toPath,
                                  height: 17,
                                  color: cWhiteColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
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
