import 'package:flutter/material.dart';
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
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          Strings.findProducts,
          style: cMainTitleStyle,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            shrinkWrap: true,
            children: [
              TextField(
                autofocus: false,
                controller: _searchText,
                style: cExploreSearchTextStyle,
                decoration: InputDecoration(
                    filled: true,
                    hintText: Strings.searchStore,
                    hintStyle: cExploreSearchHintStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            width: 0.0, style: BorderStyle.none)),
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
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 189,
                      mainAxisExtent: 175,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
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
                        height: 189,
                        width: 175,
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
                              Image.asset(
                                  ImagePath.exploreListImagePath[index]),
                              Text(
                                Strings.exploreListHeads[index],
                                style: cExploreListHeadStyle,
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
      ),
    );
  }
}
