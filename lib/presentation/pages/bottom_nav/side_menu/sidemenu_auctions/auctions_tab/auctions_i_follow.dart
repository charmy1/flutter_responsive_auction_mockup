import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/profile/widgets/my_offers_detail.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/dots_page_indicator.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/dots_page_indivator.dart';
import 'package:sized_context/sized_context.dart';

import '../../../../../size_config.dart';
import '../my_offers_in_auction.dart';
class AuctionsIFollow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 1.5,
          vertical: SizeConfig.heightMultiplier * 1.5),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            SizedBox(
              height: context.heightPct(.025),
            ),
            // 347. Müzayede Çağdaş
            Text("347. Müzayede Çağdaş ve Klasik Tablolar",
                style: TextStyles.textStyle28),
            DotsPageIndicator(),

            SizedBox(
              height: context.heightPct(.025),
            ),

            Tab1(),
            MyOffersDetail()
          ]),
    );
  }
}