import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/app_constant.dart';
import '../constant/app_strings.dart';
import '../constant/icon_enum.dart';
import '../constant/image_path.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        cacheExtent: 250,
        itemExtent: 170,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15),
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
                  padding: const EdgeInsets.all(15.0),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            ImagePath.exploreListImagePath[index],
                            height: 100,
                            width: 100,
                            fit: BoxFit.contain,
                          ),
                          Text(
                            Strings.exploreListHeads[index],
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          Text(
                            "355ml,Price",
                            style: Theme.of(context).textTheme.subtitle2,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                      Positioned(
                        bottom: 5,
                        right: 5,
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
                            child: SvgPicture.asset(IconEnums.plus.toPath,
                                height: 17, color: cWhiteColor),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        bottom: 0,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            "\$1.99",
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ),
                      )
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
