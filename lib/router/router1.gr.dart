// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../presentation/pages/bottom_nav/bottom_nav_page.dart';
import '../presentation/pages/bottom_nav/profile/order_details.dart';
import '../presentation/pages/bottom_nav/profile/orders.dart';
import '../presentation/pages/bottom_nav/side_menu/about_us/antique_palace.dart';
import '../presentation/pages/bottom_nav/side_menu/about_us/artam_antik_as.dart';
import '../presentation/pages/bottom_nav/side_menu/about_us/artam_global.dart';
import '../presentation/pages/bottom_nav/side_menu/about_us/auction_records.dart';
import '../presentation/pages/bottom_nav/side_menu/about_us/history.dart';
import '../presentation/pages/bottom_nav/side_menu/about_us/our_services.dart';
import '../presentation/pages/bottom_nav/side_menu/about_us/past_today.dart';
import '../presentation/pages/bottom_nav/side_menu/about_us/press.dart';
import '../presentation/pages/bottom_nav/side_menu/antique_publications.dart';
import '../presentation/pages/bottom_nav/side_menu/contacts.dart';
import '../presentation/pages/bottom_nav/side_menu/expertise.dart';
import '../presentation/pages/bottom_nav/side_menu/my_order.dart';
import '../presentation/pages/bottom_nav/side_menu/sales_works.dart';
import '../presentation/pages/bottom_nav/side_menu/side_menu_page.dart';
import '../presentation/pages/bottom_nav/side_menu/sidemenu_auctions/my_offers_in_auction.dart';
import '../presentation/pages/forgot_pass/forgot_password_page.dart';
import '../presentation/pages/signup_signin/signin_page.dart';
import '../presentation/pages/signup_signin/signup_page.dart';
import '../presentation/pages/top_menu/cart/cart_buy.dart';
import '../presentation/pages/top_menu/cart/my_cart.dart';
import '../presentation/pages/top_menu/search/search_page.dart';
import '../presentation/widgets/core/author_common/author_profile.dart';
import '../presentation/widgets/core/author_common/author_work_detail.dart';

class Routes {
  static const String signInPage = '/sign-in-page';
  static const String signUp = '/sign-up';
  static const String bottomNavPage = '/';
  static const String sideMenuPage = '/side-menu-page';
  static const String searchPage = '/search-page';
  static const String myCart = '/my-cart';
  static const String cartBuy = '/cart-buy';
  static const String forgotPasswordPage = '/forgot-password-page';
  static const String salesWork = '/sales-work';
  static const String expertise = '/Expertise';
  static const String antiquePublications = '/antique-publications';
  static const String antikAs = '/antik-as';
  static const String antiquePalace = '/antique-palace';
  static const String global = '/Global';
  static const String auctionRecords = '/auction-records';
  static const String history = '/History';
  static const String ourServices = '/our-services';
  static const String pastToday = '/past-today';
  static const String press = '/Press';
  static const String contact = '/Contact';
  static const String myOrder = '/my-order';
  static const String authorWorkDetails = '/author-work-details';
  static const String authorProfile = '/author-profile';
  static const String myOffersInAuction = '/my-offers-in-auction';
  static const String orders = '/Orders';
  static const String orderDetails = '/order-details';
  static const all = <String>{
    signInPage,
    signUp,
    bottomNavPage,
    sideMenuPage,
    searchPage,
    myCart,
    cartBuy,
    forgotPasswordPage,
    salesWork,
    expertise,
    antiquePublications,
    antikAs,
    antiquePalace,
    global,
    auctionRecords,
    history,
    ourServices,
    pastToday,
    press,
    contact,
    myOrder,
    authorWorkDetails,
    authorProfile,
    myOffersInAuction,
    orders,
    orderDetails,
  };
}

class Router1 extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.signUp, page: SignUp),
    RouteDef(Routes.bottomNavPage, page: BottomNavPage),
    RouteDef(Routes.sideMenuPage, page: SideMenuPage),
    RouteDef(Routes.searchPage, page: SearchPage),
    RouteDef(Routes.myCart, page: MyCart),
    RouteDef(Routes.cartBuy, page: CartBuy),
    RouteDef(Routes.forgotPasswordPage, page: ForgotPasswordPage),
    RouteDef(Routes.salesWork, page: SalesWork),
    RouteDef(Routes.expertise, page: Expertise),
    RouteDef(Routes.antiquePublications, page: AntiquePublications),
    RouteDef(Routes.antikAs, page: AntikAs),
    RouteDef(Routes.antiquePalace, page: AntiquePalace),
    RouteDef(Routes.global, page: Global),
    RouteDef(Routes.auctionRecords, page: AuctionRecords),
    RouteDef(Routes.history, page: History),
    RouteDef(Routes.ourServices, page: OurServices),
    RouteDef(Routes.pastToday, page: PastToday),
    RouteDef(Routes.press, page: Press),
    RouteDef(Routes.contact, page: Contact),
    RouteDef(Routes.myOrder, page: MyOrder),
    RouteDef(Routes.authorWorkDetails, page: AuthorWorkDetails),
    RouteDef(Routes.authorProfile, page: AuthorProfile),
    RouteDef(Routes.myOffersInAuction, page: MyOffersInAuction),
    RouteDef(Routes.orders, page: Orders),
    RouteDef(Routes.orderDetails, page: OrderDetails),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SignInPage: (data) {
      final args = data.getArgs<SignInPageArguments>(
        orElse: () => SignInPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(
          key: args.key,
          title: args.title,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    SignUp: (data) {
      final args = data.getArgs<SignUpArguments>(
        orElse: () => SignUpArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUp(
          key: args.key,
          title: args.title,
        ),
        settings: data,
      );
    },
    BottomNavPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BottomNavPage(),
        settings: data,
      );
    },
    SideMenuPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SideMenuPage(),
        settings: data,
        fullscreenDialog: true,
      );
    },
    SearchPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => SearchPage(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRight,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    MyCart: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => MyCart(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRight,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    CartBuy: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CartBuy(),
        settings: data,
      );
    },
    ForgotPasswordPage: (data) {
      final args = data.getArgs<ForgotPasswordPageArguments>(
        orElse: () => ForgotPasswordPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ForgotPasswordPage(
          key: args.key,
          title: args.title,
        ),
        settings: data,
      );
    },
    SalesWork: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SalesWork(),
        settings: data,
      );
    },
    Expertise: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Expertise(),
        settings: data,
      );
    },
    AntiquePublications: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AntiquePublications(),
        settings: data,
      );
    },
    AntikAs: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AntikAs(),
        settings: data,
      );
    },
    AntiquePalace: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AntiquePalace(),
        settings: data,
      );
    },
    Global: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Global(),
        settings: data,
      );
    },
    AuctionRecords: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AuctionRecords(),
        settings: data,
      );
    },
    History: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => History(),
        settings: data,
      );
    },
    OurServices: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OurServices(),
        settings: data,
      );
    },
    PastToday: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PastToday(),
        settings: data,
      );
    },
    Press: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Press(),
        settings: data,
      );
    },
    Contact: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Contact(),
        settings: data,
      );
    },
    MyOrder: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MyOrder(),
        settings: data,
      );
    },
    AuthorWorkDetails: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AuthorWorkDetails(),
        settings: data,
      );
    },
    AuthorProfile: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AuthorProfile(),
        settings: data,
      );
    },
    MyOffersInAuction: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MyOffersInAuction(),
        settings: data,
      );
    },
    Orders: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Orders(),
        settings: data,
      );
    },
    OrderDetails: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OrderDetails(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension Router1ExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSignInPage({
    Key key,
    String title,
  }) =>
      push<dynamic>(
        Routes.signInPage,
        arguments: SignInPageArguments(key: key, title: title),
      );

  Future<dynamic> pushSignUp({
    Key key,
    String title,
  }) =>
      push<dynamic>(
        Routes.signUp,
        arguments: SignUpArguments(key: key, title: title),
      );

  Future<dynamic> pushBottomNavPage() => push<dynamic>(Routes.bottomNavPage);

  Future<dynamic> pushSideMenuPage() => push<dynamic>(Routes.sideMenuPage);

  Future<dynamic> pushSearchPage() => push<dynamic>(Routes.searchPage);

  Future<dynamic> pushMyCart() => push<dynamic>(Routes.myCart);

  Future<dynamic> pushCartBuy() => push<dynamic>(Routes.cartBuy);

  Future<dynamic> pushForgotPasswordPage({
    Key key,
    String title,
  }) =>
      push<dynamic>(
        Routes.forgotPasswordPage,
        arguments: ForgotPasswordPageArguments(key: key, title: title),
      );

  Future<dynamic> pushSalesWork() => push<dynamic>(Routes.salesWork);

  Future<dynamic> pushExpertise() => push<dynamic>(Routes.expertise);

  Future<dynamic> pushAntiquePublications() =>
      push<dynamic>(Routes.antiquePublications);

  Future<dynamic> pushAntikAs() => push<dynamic>(Routes.antikAs);

  Future<dynamic> pushAntiquePalace() => push<dynamic>(Routes.antiquePalace);

  Future<dynamic> pushGlobal() => push<dynamic>(Routes.global);

  Future<dynamic> pushAuctionRecords() => push<dynamic>(Routes.auctionRecords);

  Future<dynamic> pushHistory() => push<dynamic>(Routes.history);

  Future<dynamic> pushOurServices() => push<dynamic>(Routes.ourServices);

  Future<dynamic> pushPastToday() => push<dynamic>(Routes.pastToday);

  Future<dynamic> pushPress() => push<dynamic>(Routes.press);

  Future<dynamic> pushContact() => push<dynamic>(Routes.contact);

  Future<dynamic> pushMyOrder() => push<dynamic>(Routes.myOrder);

  Future<dynamic> pushAuthorWorkDetails() =>
      push<dynamic>(Routes.authorWorkDetails);

  Future<dynamic> pushAuthorProfile() => push<dynamic>(Routes.authorProfile);

  Future<dynamic> pushMyOffersInAuction() =>
      push<dynamic>(Routes.myOffersInAuction);

  Future<dynamic> pushOrders() => push<dynamic>(Routes.orders);

  Future<dynamic> pushOrderDetails() => push<dynamic>(Routes.orderDetails);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// SignInPage arguments holder class
class SignInPageArguments {
  final Key key;
  final String title;
  SignInPageArguments({this.key, this.title});
}

/// SignUp arguments holder class
class SignUpArguments {
  final Key key;
  final String title;
  SignUpArguments({this.key, this.title});
}

/// ForgotPasswordPage arguments holder class
class ForgotPasswordPageArguments {
  final Key key;
  final String title;
  ForgotPasswordPageArguments({this.key, this.title});
}
