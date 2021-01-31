// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../presentation/pages/bottom_nav/auctions/auctions_home.dart';
import '../../presentation/pages/bottom_nav/auctions/current_auctions/current_auction_detail.dart';
import '../../presentation/pages/bottom_nav/auctions/current_auctions/current_auctions.dart';
import '../../presentation/pages/bottom_nav/auctions/past_auctions/past_auction_detail.dart';
import '../../presentation/pages/bottom_nav/auctions/past_auctions/past_auctions.dart';

class AuctionsRoutes {
  static const String auctionsHome = '/';
  static const String currentAuctions = '/current-auctions';
  static const String pastAuctions = '/past-auctions';
  static const String currentAuctionDetail = '/current-auction-detail';
  static const String pastAuctionDetail = '/past-auction-detail';
  static const all = <String>{
    auctionsHome,
    currentAuctions,
    pastAuctions,
    currentAuctionDetail,
    pastAuctionDetail,
  };
}

class AuctionsRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(AuctionsRoutes.auctionsHome, page: AuctionsHome),
    RouteDef(AuctionsRoutes.currentAuctions, page: CurrentAuctions),
    RouteDef(AuctionsRoutes.pastAuctions, page: PastAuctions),
    RouteDef(AuctionsRoutes.currentAuctionDetail, page: CurrentAuctionDetail),
    RouteDef(AuctionsRoutes.pastAuctionDetail, page: PastAuctionDetail),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    AuctionsHome: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => AuctionsHome(),
        settings: data,
      );
    },
    CurrentAuctions: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => CurrentAuctions(),
        settings: data,
      );
    },
    PastAuctions: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => PastAuctions(),
        settings: data,
      );
    },
    CurrentAuctionDetail: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => CurrentAuctionDetail(),
        settings: data,
      );
    },
    PastAuctionDetail: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => PastAuctionDetail(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension AuctionsRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushAuctionsHome() =>
      push<dynamic>(AuctionsRoutes.auctionsHome);

  Future<dynamic> pushCurrentAuctions() =>
      push<dynamic>(AuctionsRoutes.currentAuctions);

  Future<dynamic> pushPastAuctions() =>
      push<dynamic>(AuctionsRoutes.pastAuctions);

  Future<dynamic> pushCurrentAuctionDetail() =>
      push<dynamic>(AuctionsRoutes.currentAuctionDetail);

  Future<dynamic> pushPastAuctionDetail() =>
      push<dynamic>(AuctionsRoutes.pastAuctionDetail);
}
