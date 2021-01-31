import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/auctions/current_auctions/widgets/current_auction_list.dart';
import 'package:flutter_app_responsive_auction_mockup/router/auctions/auctions_router.gr.dart';

class PastAuctionMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  CurrentAuctionList(
      scrollDirection: Axis.vertical,
      onTap: () {
        ExtendedNavigator.named("auctionsNav")
            .push(AuctionsRoutes.pastAuctionDetail);
      },
    );
  }
}


class PastAuctionTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CurrentAuctionGrid(

      onTap: () {
        ExtendedNavigator.named("auctionsNav")
            .push(AuctionsRoutes.pastAuctionDetail);
      },
    );
  }
}
