import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_ui/view/home/detalis_page/product_detail_page.dart';

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
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        title: Text(title),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FilterPage()));
              },
              icon: IconEnums.filter.toImage)
        ],
        bottom: const PreferredSize(
          child: CustomDivider(),
          preferredSize: Size.fromHeight(4),
        ),
        titleTextStyle: cMainTitleStyle,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            shrinkWrap: true,
            children: [
              const SizedBox(
                height: 30,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 189,
                    mainAxisExtent: 260,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: 8,
                itemBuilder: (BuildContext ctx, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetails()));
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
                        padding: const EdgeInsets.all(15.0),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  ImagePath.exploreListImagePath[index],
                                  height: 120,
                                  width: 100,
                                  fit: BoxFit.contain,
                                ),
                                Text(
                                  Strings.exploreListHeads[index],
                                  style: cCartPriceTextStyle,
                                  textAlign: TextAlign.center,
                                ),
                                const Text(
                                  "355ml,Price",
                                  style: cCartKgTextStyle,
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                            Positioned(
                              bottom: 0,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: SizedBox(
                                  width:
                                      (MediaQuery.of(context).size.width / 2) -
                                          70,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "\$1.99",
                                        style: cCartProductPriceTextStyle,
                                      ),
                                      SizedBox(
                                        width: 45,
                                        height: 45,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            onPrimary: Colors.black,
                                            primary: cMainColor,
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(17.0),
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: SvgPicture.asset(
                                              IconEnums.plus.toPath,
                                              height: 17,
                                              color: cWhiteColor),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
