import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';

import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/profile/widgets/my_offers_detail.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/widgets/search/auction_card.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/widgets/search/author_card.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/widgets/search/custom_search.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/dots_page_indivator.dart';
import 'package:sized_context/sized_context.dart';

//Here debounce search from netwok either filter two types Auction and Author type
class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var bool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            ExtendedNavigator.root.pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: ColorsCustom.steel_grey,
          ),
        ),
        centerTitle: true,
        title: Text("Arama",
            style: TextStyles.textStyle12, textAlign: TextAlign.center),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: boxShadowDecoration,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: context.heightPct(.025),
                  ),
                  CustomSearchView(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.sort),
                        onPressed: () {
                          setState(() {
                            bool = !bool;
                          });
                        },
                      )
                    ],
                  ),
                  (bool) ? AuctionCard() : AuthorCard(),
                ]),
          ),
        ),
      ),
    );
  }
}
