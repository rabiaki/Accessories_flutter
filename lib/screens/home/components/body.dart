import 'package:flutter/material.dart';
import 'package:flutter_demo/constants.dart';

import 'featured_accessories.dart';
import 'header_with_searchbox.dart';
import 'recommends_accessories.dart';
import 'title_with_more_btn.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended", press: () {},),
          RecommendsAccessories(),
          TitleWithMoreBtn(title: "Featured Accessories", press: () {}),
          FeaturedAccessories(),
          SizedBox(height: kDefaultPadding)
        ],
      ),
    );
  }
}

