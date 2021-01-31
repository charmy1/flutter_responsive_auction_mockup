// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../presentation/pages/bottom_nav/offers/test_offers.dart';
import '../../presentation/pages/bottom_nav/profile/bank_accounts.dart';
import '../../presentation/pages/bottom_nav/profile/membership_types.dart';
import '../../presentation/pages/bottom_nav/profile/my_account.dart';
import '../../presentation/pages/bottom_nav/profile/my_address.dart';
import '../../presentation/pages/bottom_nav/profile/my_personal_information.dart';
import '../../presentation/pages/bottom_nav/profile/profile_home.dart';
import '../../presentation/pages/bottom_nav/profile/shipping_fees.dart';

class ProfileRoutes {
  static const String profileHome = '/';
  static const String shippingFees = '/one';
  static const String bankAccounts = '/bank-accounts';
  static const String myAccount = '/my-account';
  static const String myAddress = '/my-address';
  static const String myPersonalInformation = '/my-personal-information';
  static const String membershipTypes = '/membership-types';
  static const all = <String>{
    profileHome,
    shippingFees,
    bankAccounts,
    myAccount,
    myAddress,
    myPersonalInformation,
    membershipTypes,
  };
}

class ProfileRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(ProfileRoutes.profileHome, page: ProfileHome),
    RouteDef(
      ProfileRoutes.shippingFees,
      page: ShippingFees,
      generator: ShippingFeesRouter(),
    ),
    RouteDef(ProfileRoutes.bankAccounts, page: BankAccounts),
    RouteDef(ProfileRoutes.myAccount, page: MyAccount),
    RouteDef(ProfileRoutes.myAddress, page: MyAddress),
    RouteDef(ProfileRoutes.myPersonalInformation, page: MyPersonalInformation),
    RouteDef(ProfileRoutes.membershipTypes, page: MembershipTypes),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    ProfileHome: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ProfileHome(),
        settings: data,
      );
    },
    ShippingFees: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ShippingFees(),
        settings: data,
      );
    },
    BankAccounts: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => BankAccounts(),
        settings: data,
      );
    },
    MyAccount: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => MyAccount(),
        settings: data,
      );
    },
    MyAddress: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => MyAddress(),
        settings: data,
      );
    },
    MyPersonalInformation: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => MyPersonalInformation(),
        settings: data,
      );
    },
    MembershipTypes: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => MembershipTypes(),
        settings: data,
      );
    },
  };
}

class ShippingFeesRoutes {
  static const String testOffers = '/two';
  static const all = <String>{
    testOffers,
  };
}

class ShippingFeesRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(ShippingFeesRoutes.testOffers, page: TestOffers),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    TestOffers: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => TestOffers(),
        settings: data,
      );
    },
  };
}
