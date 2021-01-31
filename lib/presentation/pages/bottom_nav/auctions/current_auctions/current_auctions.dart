import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/auctions/current_auctions/widgets/current_auction_responsive.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/home/widgets/muz_list.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/responsive_widget.dart';
import 'package:flutter_app_responsive_auction_mockup/router/auctions/auctions_router.gr.dart';

import '../../../../size_config.dart';

class CurrentAuctions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            ExtendedNavigator.named("auctionsNav").pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: ColorsCustom.steel_grey,
            size: SizeConfig.heightMultiplier * 3,
          ),
        ),
        centerTitle: true,
        title: Text("Güncel Müzayedeler",
            style: TextStyles.textStyle12, textAlign: TextAlign.center),
      ),
      body: Container(
        decoration: boxShadowDecoration,
        child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 1.5 * SizeConfig.widthMultiplier),
            child: TabletViewWidget(
              mobileLayout: CurrentAuctionMobile(),
              tabletLayout: CurrentAuctionTablet(),
            )),
      ),
    );
  }
}

