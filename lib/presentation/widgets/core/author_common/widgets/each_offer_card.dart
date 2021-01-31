import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';

import '../../../../size_config.dart';

class EachOfferCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return // Rectangle
      Container(
        decoration: BoxDecoration(
            border: Border.all(color: ColorsCustom.silver, width: 0.5),
            color: ColorsCustom.white_two),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.widthMultiplier * 1.5,
              vertical: SizeConfig.heightMultiplier * 1.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // 18.07.2020
                  Text("18.07.2020", style: TextStyles.textStyle47),
                  // 14:01:11.166
                  Text("14:01:11.166", style: TextStyles.textStyle47)
                ],
              ),
              Column(
                children: <Widget>[
                  // **********
                  Text("**********",
                      style: TextStyles.textStyle50, textAlign: TextAlign.center)
                ],
              ),
              Column(
                children: <Widget>[
                  // 5.400 TL
                  Text("5.400 TL", style: TextStyles.textStyle47)
                ],
              )
            ],
          ),
        ),
      );
  }
}