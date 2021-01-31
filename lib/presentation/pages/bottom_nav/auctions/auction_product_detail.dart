//import 'package:auto_route/auto_route.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
//import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/sidemenu_auctions/auctions_tab/auctions_i_follow.dart';
//
//class AuctionProductDetail extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.white,
//        automaticallyImplyLeading: true,
//        elevation: 0,
//        leading: IconButton(
//          onPressed: () {
//            ExtendedNavigator.named("auctionsNav").pop();
//          },
//          icon: Icon(
//            Icons.arrow_back_ios,
//            color: ColorsCustom.steel_grey,
//          ),
//        ),
//        centerTitle: true,
//        title: Text("Güncel Müzayedeler",//"Current Auction Detail",
//            style: TextStyles.textStyle12, textAlign: TextAlign.center),
//      ),
//      body: Container(
//        decoration: boxShadowDecoration,
//        child: SingleChildScrollView(child: AuctionsIFollow()),
//      ),
//    );
//  }
//}
