import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import '../../../core/constant/app_strings.dart';

import '../../../core/constant/app_constant.dart';
import '../../../core/constant/icon_enum.dart';
import '../../../core/constant/image_path.dart';
import '../detalis_page/explore_detail_page.dart';

class ExplorePage extends StatefulWidget {
  ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final TextEditingController _searchText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          Strings.findProducts,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          shrinkWrap: true,
          children: [
            TextField(
              autofocus: false,
              controller: _searchText,
              style: Theme.of(context).textTheme.subtitle2,
              decoration: InputDecoration(
                hintText: Strings.searchStore,
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                suffixIcon: IconButton(
                  // Icon to
                  color: Colors.grey,
                  icon: IconEnums.delete.toImage,
                  onPressed: () {
                    _searchText.text = "";
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: context.screenWidth * 0.5,
                  mainAxisExtent: context.screenHeight * 0.30,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: 8,
                itemBuilder: (BuildContext ctx, index) {
                  return InkWell(
                    onTap: () {
                      FocusScope.of(context).unfocus();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchDetail(
                                  title: Strings.exploreListHeads[index])));
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
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: context.screenHeight * 0.15,
                              child: Image.asset(
                                ImagePath.exploreListImagePath[index],
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              width: context.screenWidth * 0.25,
                              child: FittedBox(
                                child: Text(
                                  Strings.exploreListHeads[index],
                                  style: Theme.of(context).textTheme.subtitle2,
                                  textAlign: TextAlign.center,
                                ),
                              ),
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
