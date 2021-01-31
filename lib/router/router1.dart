import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/bottom_nav_page.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/profile/order_details.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/profile/orders.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/about_us/antique_palace.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/about_us/artam_antik_as.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/about_us/artam_global.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/about_us/auction_records.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/about_us/history.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/about_us/our_services.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/about_us/past_today.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/about_us/press.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/antique_publications.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/contacts.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/expertise.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/my_order.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/sales_works.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/side_menu_page.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/sidemenu_auctions/my_offers_in_auction.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/forgot_pass/forgot_password_page.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/signup_signin/signin_page.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/signup_signin/signup_page.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/cart/cart_buy.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/cart/my_cart.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/search/search_page.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/author_common/author_profile.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/author_common/author_work_detail.dart';

//base router
@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
    routesClassName: "Routes",
    routes: [
      AutoRoute(page: SignInPage, fullscreenDialog: true),
      AutoRoute(page: SignUp),
      //AdaptiveRoute (page: CodeConfirmationPage),
      AutoRoute(page: BottomNavPage, initial: true),
      AutoRoute(page: SideMenuPage, fullscreenDialog: true),
      //search
      CustomRoute(
          page: SearchPage,
          transitionsBuilder: TransitionsBuilders.slideRight,
          durationInMilliseconds: 400),
      CustomRoute(
          page: MyCart,
          transitionsBuilder: TransitionsBuilders.slideRight,
          durationInMilliseconds: 400),

      AutoRoute(page: CartBuy),
      //

      AutoRoute(page: ForgotPasswordPage),
      //
      AutoRoute(page: SalesWork),
      //
      AutoRoute(page: Expertise),
      //
      AutoRoute(page: AntiquePublications),

      //About us
      AutoRoute(page: AntikAs),
      AutoRoute(page: AntiquePalace),
      AutoRoute(page: Global),
      AutoRoute(page: AuctionRecords),
      AutoRoute(page: History),
      AutoRoute(page: OurServices),
      AutoRoute(page: PastToday),
      AutoRoute(page: Press),

      //
      AutoRoute(page: Contact),
      //
      AutoRoute(page: MyOrder),

      //search
          // past auction->pastauctions details _>Eser detayi
          // present auction->present auctions details _>Eser detayi
      AutoRoute(page: AuthorWorkDetails),
      AutoRoute(page: AuthorProfile), //search author ->on click
      //
      AutoRoute(page: MyOffersInAuction),

      //orders

      AutoRoute(page: Orders),
      AutoRoute(page: OrderDetails),
    ])
class $Router1 {}

/*

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute (page: HomeScreen, initial: true),
    coreRouterModule,
    AdaptiveRoute (path: '*', page: UnknownRouteScreen)
  ],
)
class $RootRouter {}
this can be in a separate file

const coreRouterModule = AdaptiveRoute <void>(
  path: '/core',
  page: CorePage,
  children: [
    AdaptiveRoute (path: '/core-first', page: CoreFirst),
    AdaptiveRoute (path: '/core-second', page: CoreSecond),
  ],
);*/
