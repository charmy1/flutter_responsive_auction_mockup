import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';

import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/home/widgets/muz_list.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/dots_page_indivator.dart';
import 'package:flutter_app_responsive_auction_mockup/router/auctions/auctions_router.gr.dart';

import '../../../size_config.dart';
import 'current_auctions/widgets/dots_page_indicator_current_auctions.dart';

class AuctionsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: boxShadowDecoration,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 1.5 * SizeConfig.widthMultiplier),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 1.5 * 2*SizeConfig.heightMultiplier,
                ),
                Row(
                  children: <Widget>[
                    // Geçmiş Müzayedeler
                    Text("Güncel Müzayedeler", style: TextStyles.textStyle4),
                    Spacer(),
                    // Tümünü Gör
                    GestureDetector(
                      onTap: () {
                        ExtendedNavigator.named("auctionsNav")
                            .push(AuctionsRoutes.currentAuctions);
                      },
                      child: Text("Tümünü Gör", style: TextStyles.textStyle27),
                    )
                  ],
                ),
                DotsPageIndicatorCurrentAuctions(onTap: () {}),
                SizedBox(
                  height: 1.5 * 3 * SizeConfig.heightMultiplier,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Müzayedeler
                    Row(
                      children: <Widget>[
                        // Geçmiş Müzayedeler
                        Text("Geçmiş Müzayedeler",
                            style: TextStyles.textStyle4),
                        Spacer(),
                        // Tümünü Gör
                        GestureDetector(
                          onTap: () {
                            ExtendedNavigator.named("auctionsNav")
                                .push(AuctionsRoutes.pastAuctions);
                          },
                          child:
                              Text("Tümünü Gör", style: TextStyles.textStyle27),
                        )
                      ],
                    ),
                    Container(
                        constraints: BoxConstraints(
                            maxHeight: 30 * SizeConfig.heightMultiplier),
                        child: MuzList(
                          scrollDirection: Axis.horizontal, //216~.26 /816
                        )),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
