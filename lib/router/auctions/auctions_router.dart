import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/auctions/auction_product_detail.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/auctions/auctions_home.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/auctions/current_auctions/current_auction_detail.dart';

import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/auctions/current_auctions/current_auctions.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/auctions/past_auctions/past_auction_detail.dart';

import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/auctions/past_auctions/past_auctions.dart';

@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
    routesClassName: "AuctionsRoutes",
    routes: [
      AdaptiveRoute(page: AuctionsHome, initial: true),
      AdaptiveRoute(page: CurrentAuctions),
      AdaptiveRoute(page: PastAuctions),
      //AdaptiveRoute(page: AuctionProductDetail),
      AdaptiveRoute(page: CurrentAuctionDetail),
      AdaptiveRoute(page: PastAuctionDetail),
    ])
class $AuctionsRouter {}
