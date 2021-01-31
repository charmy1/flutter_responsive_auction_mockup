// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../presentation/pages/bottom_nav/buy_now/buy_now_details.dart';
import '../../presentation/pages/bottom_nav/buy_now/buy_now_home.dart';

class BuyNowRoutes {
  static const String buyNowHome = '/';
  static const String buyNowDetails = '/buy-now-details';
  static const all = <String>{
    buyNowHome,
    buyNowDetails,
  };
}

class BuyNowRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(BuyNowRoutes.buyNowHome, page: BuyNowHome),
    RouteDef(BuyNowRoutes.buyNowDetails, page: BuyNowDetails),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    BuyNowHome: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => BuyNowHome(),
        settings: data,
      );
    },
    BuyNowDetails: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => BuyNowDetails(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension BuyNowRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushBuyNowHome() => push<dynamic>(BuyNowRoutes.buyNowHome);

  Future<dynamic> pushBuyNowDetails() =>
      push<dynamic>(BuyNowRoutes.buyNowDetails);
}
