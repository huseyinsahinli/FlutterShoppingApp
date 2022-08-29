import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nectar_ui/core/extensions/context_extensions.dart';
import 'package:nectar_ui/core/extensions/double_extensions.dart';
import 'package:nectar_ui/core/extensions/string_extensions.dart';
import 'package:nectar_ui/core/navigator/app_router.dart';
import 'package:nectar_ui/core/padding/app_padding.dart';
import 'package:auto_route/auto_route.dart';

import '../../../core/constant/app_constant.dart';
import '../../../core/constant/icon_enum.dart';
import '../../core/helper/text_scale_size.dart';
import '../../core/init/lang/locale_keys.g.dart';
import '../../core/services/firestore.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

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
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                suffixIcon: IconButton(
                  color: Colors.grey,
                  icon: IconEnums.delete.toImage,
                  onPressed: () => _searchTextController.clear(),
                ),
              ),
            ),
            20.0.sizedBoxOnlyHeight,
            StreamBuilder<QuerySnapshot>(
                stream: FireCloudStore.category,
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
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
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: context.screenWidth * 0.5,
                        mainAxisExtent: context.screenHeight * 0.5 <= 200
                            ? context.screenHeight * 0.5
                            : 200,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemCount: data.size,
                      itemBuilder: (BuildContext ctx, index) {
                        return InkWell(
                          onTap: () {
                            FocusScope.of(context).unfocus();
                            print('Evet');
                            try {} catch (e) {}
                            //print('${data.docs[index]['products-feed']}');
                            context.router.push(
                              SearchDetailsRoute(
                                  title: data.docs[index]['name'],
                                  id: 'BLkV0d48W60TgIwHBcp2' //data.docs[index].id,
                                  ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  data.docs[index]['image'],
                                ),
                                fit: BoxFit.cover,
                              ),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: Padding(
                              padding: const AppPadding.all(),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        spreadRadius: 10,
                                        blurRadius: 5,
                                        offset: Offset(
                                          0,
                                          7,
                                        ), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Expanded(
                                    child: Text(
                                      data.docs[index]['name'],
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2!
                                          .copyWith(
                                            color: cWhiteColor,
                                          ),
                                      textScaleFactor:
                                          ScaleSize.textScaleFactor(context),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      });
                }),
            (context.screenHeight * 0.10).sizedBoxOnlyHeight,
          ],
        ),
      ),
    );
  }
}
