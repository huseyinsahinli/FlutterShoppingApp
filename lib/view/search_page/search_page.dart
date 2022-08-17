import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import 'package:nectar_ui/core/extensions/double_extensions.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/navigator/app_router.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';
import 'package:auto_route/auto_route.dart';

import '../../../core/constant/app_strings.dart';

import '../../../core/constant/app_constant.dart';
import '../../../core/constant/icon_enum.dart';
import '../../../core/constant/image_path.dart';
import '../../core/constant/app_icon.dart';
import '../../core/helper/text_scale_size.dart';
import '../../core/init/lang/locale_keys.g.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.search_title.locale,
        ),
      ),
      body: Padding(
        padding: const AppPadding.symmetricOnlyHorizontal(),
        child: ListView(
          shrinkWrap: true,
          children: [
            TextField(
              autofocus: false,
              controller: _searchTextController,
              style: Theme.of(context).textTheme.subtitle2,
              decoration: InputDecoration(
                //TODO: kategorilere göre arama yapılabilir.
                hintText: LocaleKeys.search_search.locale,
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                suffixIcon: IconButton(
                  color: Colors.grey,
                  icon: IconEnums.delete.toImage,
                  onPressed: () => _searchTextController.clear(),
                ),
              ),
            ),
            20.0.sizedBoxOnlyHeight,
            GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: context.screenWidth * 0.5,
                  mainAxisExtent: 250,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: 8,
                itemBuilder: (BuildContext ctx, index) {
                  return InkWell(
                    onTap: () {
                      FocusScope.of(context).unfocus();
                      context.router.push(
                        SearchDetailsRoute(
                          title: Strings.exploreListHeads[index],
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            cExploreBackgroundColorLists[index][0],
                            cExploreBackgroundColorLists[index][1],
                            cExploreBackgroundColorLists[index][2],
                          ],
                        ),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: cExploreBackgroundColorLists[index][3],
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Padding(
                        padding: const AppPadding.all(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 100,
                              child: Image.asset(
                                ImagePath.exploreListImagePath[index],
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              Strings.exploreListHeads[index],
                              style: Theme.of(context).textTheme.subtitle2,
                              textScaleFactor:
                                  ScaleSize.textScaleFactor(context),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
