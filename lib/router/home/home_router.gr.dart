// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../presentation/pages/bottom_nav/home/home_page.dart';

class HomeRoutes {
  static const String homePage1 = '/';
  static const all = <String>{
    homePage1,
  };
}

class HomeRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(HomeRoutes.homePage1, page: HomePage1),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage1: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => HomePage1(),
        settings: data,
      );
    },
  };
}
