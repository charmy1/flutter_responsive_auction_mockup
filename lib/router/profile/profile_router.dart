import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/offers/test_offers.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/profile/bank_accounts.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/profile/membership_types.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/profile/my_account.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/profile/my_address.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/profile/my_personal_information.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/profile/profile_home.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/profile/shipping_fees.dart';

@MaterialAutoRouter(
  routesClassName: "ProfileRoutes",
  routes: [
    AdaptiveRoute (page: ProfileHome, initial: true),
    AdaptiveRoute (
        page: ShippingFees,
        path: "/one",
        children: [AdaptiveRoute (page: TestOffers, path: "/two")]),
    AdaptiveRoute (page: BankAccounts),
    AdaptiveRoute (page: MyAccount),
    AdaptiveRoute (page: MyAddress),
  //  AdaptiveRoute (page: MyOffersInAuction),
    AdaptiveRoute (page: MyPersonalInformation),
    //order
    //
    AdaptiveRoute (page: MembershipTypes)

  ],
)
class $ProfileRouter {}
