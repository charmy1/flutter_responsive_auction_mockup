import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/widgets/search/bid_fast_dialog.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter_app_responsive_auction_mockup/router/router1.gr.dart';
import 'package:sized_context/sized_context.dart';

import '../../../../size_config.dart';

//very big widget //break into smaller but if data is at same level //

//will be same as the webview widget implemented for the Current Auction

//used in Auction card Search
//Auction I follow
class MyOffersDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 1.5,
          vertical: SizeConfig.heightMultiplier * 1.5),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          // Lot 1,
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 1.5 * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Lot 1", style: TextStyles.textStyle5),
                // Selim Turan (1915 -
                Text("Selim Turan (1915 - 1994)",
                    style: TextStyles.textStyle23),
                // Soyut Kompozisyon
                Text("Soyut Kompozisyon", style: TextStyles.textStyle13),
                // Kağıt üzerine karışı
                Text("Kağıt üzerine karışık teknik, imzalı 12x20cm",
                    style: TextStyles.textStyle24),
                // Açılış Fiyatı: 1.500
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      style: TextStyles.textStyle25, text: "Açılış Fiyatı: "),
                  TextSpan(style: TextStyles.textStyle24, text: "1.500 TL")
                ])),
                // Güncel Değer Ortalam
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      style: TextStyles.textStyle25,
                      text: "Güncel Değer Ortalaması : "),
                  TextSpan(
                      style: TextStyles.textStyle24,
                      text: "6.000 TL - 9.000 TL")
                ])),
              ],
            ),
          ),

          SizedBox(
            height: context.heightPct(.025),
          ),
          // 9 Teklif
          Align(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Text(
                  "9 Teklif",
                  style: TextStyles.textStyle11,
                  textAlign: TextAlign.center,
                ),
                // 2.300 TL
                Text("2.300 TL",
                    style: TextStyles.textStyle26, textAlign: TextAlign.center),
              ],
            ),
          ),
          SizedBox(
            height: context.heightPct(.025),
          ),
          Row(
            children: <Widget>[
              Expanded(
                //Bid fast
                child: CustomRoundButton(
                  name: "Hızlı Teklif",
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return BidFastDialog();
                        });
                  },
                ),
              ),
              Expanded(
                //follow unfollow
                child: CustomFlatButtonTransparent(
                  name: "Eser Detayı",
                  color: ColorsCustom.velvet,
                  onPressed: () {
                    //work detail page

                    ExtendedNavigator.named("rootNav")
                        .push(Routes.authorWorkDetails);
                  },
                ),
              )
            ],
          ),
          SizedBox(
            height: context.heightPct(.025),
          ),
          Align(
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  Spacer(),
                  Icon(Icons.notifications_none,
                      color: ColorsCustom.steel_grey),
                  Text("Takibi Bırak",
                      style: TextStyles.textStyle27,
                      textAlign: TextAlign.center),
                  Spacer()
                ],
              ))
        ],
      ),
    );
  }
}
