import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/constant/app_constant.dart';
import '../../../core/constant/icon_enum.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool _open = true;
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
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.file_upload_outlined),
              color: Colors.black,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                padding: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/png/redApple.png"),
                      fit: BoxFit.contain),
                  color: Color(0xffF2F3F2),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0),
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset("assets/images/png/redApple.png"),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Naturel Red Apple",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                        IconButton(
                            onPressed: () {}, icon: IconEnums.favourite.toImage)
                      ],
                    ),
                    Text(
                      "1kg,Price",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff7C7C7C),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: IconEnums.remove.toImage),
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(
                                  color: Color(0xffE2E2E2),
                                  width: 1,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(17)),
                              ),
                              child: Center(child: Text("1")),
                            ),
                            IconButton(
                                onPressed: () {}, icon: IconEnums.plus.toImage),
                          ],
                        ),
                        Text(
                          "\$4.99",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ExpansionTile(
                      trailing: _open
                          ? IconEnums.backarrow.toImage
                          : Icon(Icons.keyboard_arrow_down,
                              size: 32, color: Colors.black),
                      onExpansionChanged: _openExpansionTile,
                      tilePadding: EdgeInsets.only(right: 20),
                      expandedAlignment: Alignment.topLeft,
                      iconColor: Colors.black,
                      title: Text(
                        'Produc Detail',
                        style: TextStyle(
                            fontSize: 16,
                            color: cTextColor,
                            fontWeight: FontWeight.w900),
                      ),
                      children: <Widget>[
                        Text(
                          'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                          style: TextStyle(
                              color: Color(0xff7C7C7C),
                              fontSize: 13,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nutritions",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w900),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Color(0xffEBEBEB),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Center(
                                child: Text(
                                  "100gr",
                                  style: TextStyle(
                                      color: cSubtitleTextColor,
                                      fontSize: 9,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: IconEnums.backarrow.toImage)
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Review",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w900),
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/png/star.png"),
                            IconButton(
                                onPressed: () {},
                                icon: IconEnums.backarrow.toImage)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: const Color(0xff53B175),
              fixedSize: const Size(double.infinity, 67),
              padding: const EdgeInsets.all(5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19.0),
              ),
            ),
            onPressed: () {},
            child: const SizedBox(
              width: double.infinity,
              child: Center(
                child: Text(
                  "Add To Basket",
                  style: cFavouritemAddAllToCartString,
                ),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }

  void _openExpansionTile(bool value) {
    setState(() {
      _open = value;
    });
  }
}
