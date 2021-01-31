import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/buy_now/buy_now_details.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/buy_now/buy_now_home.dart';

@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
    routesClassName: "BuyNowRoutes",
    routes: [
      AdaptiveRoute (page: BuyNowHome, initial: true),
      AdaptiveRoute (page: BuyNowDetails)
    ])
class $BuyNowRouter {}
