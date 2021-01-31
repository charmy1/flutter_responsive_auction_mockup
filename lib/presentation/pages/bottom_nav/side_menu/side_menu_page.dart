import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/profile/widgets/my_offers_detail.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/sidemenu_auctions/auctions_tab/auctions_i_follow.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/sidemenu_auctions/auctions_tab/auctions_i_won.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/sidemenu_auctions/auctions_tab/my_auction_offers.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/sidemenu_auctions/my_offers_in_auction.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/widgets/search/bid_fast_dialog.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/choice_chip.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/dots_page_indivator.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/border_image.dart';
import 'package:flutter_app_responsive_auction_mockup/router/router1.gr.dart';
import 'package:sized_context/sized_context.dart';

import '../../../size_config.dart';

class SideMenuPage extends StatefulWidget {
  @override
  _SideMenuPageState createState() => _SideMenuPageState();
}

String value = "1";

class _SideMenuPageState extends State<SideMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              ExtendedNavigator.root.pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: ColorsCustom.steel_grey,
            ),
          ),
          centerTitle: true,
//          title: Text("Müzayede Tekliflerim",
//              style: TextStyles.textStyle12, textAlign: TextAlign.center),
        ),
        body: SingleChildScrollView(
            child: Container(
          decoration: boxShadowDecoration,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: context.heightPct(.025 * 2),
                  ),
                  ChoiceChipCustom(
                    radioButtonValue: (value) {
                      setState(() {
                        //  value=value;

                        value = value.toString();
                      });
                    },
                    enableShape: true,
                    buttonColor: Theme.of(context).canvasColor,
                    inactive: TextStyles.textStyle27,
                    active: TextStyles.textStyle15,
                    buttonLables: [
                      "Müzayede Tekliflerim ",
                      "Takip Ettiğim Eserler",
                      "Kazandığım Eserler ",
                    ],
                    buttonValues: [
                      "1",
                      "2",
                      "3"
                      /* "Auctions My Offers",
                        "Auction I follow ",
                        "Auction I won ",*/
                    ],
                    selectedColor: Colors.transparent,
                  ),
                  SizedBox(
                    height: context.heightPct(.025 / 2),
                  ),
                  buildWidget()
                ],
              )),
        )));
  }
}

Widget buildWidget() {
  if (value == "1") {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 1.5,
          vertical: SizeConfig.heightMultiplier * 1.5),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(
          height: SizeConfig.heightMultiplier * 1.5,
        ),
        // 347. Müzayede Çağdaş
        Row(
          children: [
            FittedBox(
              child: Text("0. Müzayede Online Müzayede",
                  style: TextStyles.textStyle28),
            ),
            Spacer(),
          ],
        ),

        Row(
          children: [
            Spacer(),
            Expanded(
                child: CustomRoundButton(
              name: "TUM ESERLERE GOZ AT ",
            ))
          ],
        ),

        SizedBox(
          height: SizeConfig.heightMultiplier * 1.5,
        ),
        Card1(),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1.5,
        ),
        Card2()
      ]),
    );
    ;
  } else if (value == "2") {
    return MyAuctionOffers1();
  } else {
    return MyAuctionOffers1(); //zeplin_24
  }
}

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BorderImage(),
          SizedBox(
            height: SizeConfig.heightMultiplier * 1.5,
          ),
          Tab2(style: TextStyles.textStyle49_white),
          Padding(
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
                      Text("Lot 2", style: TextStyles.textStyle5),
                      // Selim Turan (1915 -
                      Text("Portre", style: TextStyles.textStyle23),
                      // Soyut Kompozisyon

                      // Kağıt üzerine karışı
                      Text("Kağıt üzerine karışık teknik, imzalı 12x20cm",
                          style: TextStyles.textStyle24),
                      // Açılış Fiyatı: 1.500
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            style: TextStyles.textStyle25,
                            text: "Açılış Fiyatı: "),
                        TextSpan(
                            style: TextStyles.textStyle24, text: "1.500 TL")
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
                  height: SizeConfig.heightMultiplier * 1.5 * 2,
                ),
                // 9 Teklif
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Text(
                        " Teklifer 3",
                        style: TextStyles.textStyle11,
                        textAlign: TextAlign.center,
                      ),

                      // 2.300 TL
                      Text("2.300 TL",
                          style: TextStyles.textStyle26
                              .copyWith(color: ColorsCustom.green),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1.5,
                ),
                Row(
                  children: <Widget>[
                    //  Expanded(child: Container(height: 0,),flex: 1,),
                    Expanded(
                      flex: 2,
                      //follow unfollow
                      child: CustomRoundButton(
                        //style: TextStyles.textStyle49_white,
                        name: "MUZAYEDE SONUCU BEKLENIYOR ",

                        onPressed: () {
                          //work detail page

                          // ExtendedNavigator.named("rootNav")
                          // .push(Routes.authorWorkDetails);
                        },
                      ),
                    ),
                    //   Expanded(child: Container(height: 0,),flex: 1,)
                  ],
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1.5,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 0,
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      flex: 2,
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
                    ),
                    Expanded(
                      child: Container(
                        height: 0,
                      ),
                      flex: 1,
                    )
                  ],
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1.5,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.notifications_none,
                        color: ColorsCustom.steel_grey),
                    Text("Takibi Et",
                        style: TextStyles.textStyle27,
                        textAlign: TextAlign.center),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BorderImage(),
          SizedBox(
            height: SizeConfig.heightMultiplier * 1.5,
          ),
          Tab2(style: TextStyles.textStyle49_white),
          Padding(
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
                      Text("Lot 2", style: TextStyles.textStyle5),
                      // Selim Turan (1915 -
                      Text("Portre", style: TextStyles.textStyle23),
                      // Soyut Kompozisyon

                      // Kağıt üzerine karışı
                      Text("Kağıt üzerine karışık teknik, imzalı 12x20cm",
                          style: TextStyles.textStyle24),
                      // Açılış Fiyatı: 1.500
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            style: TextStyles.textStyle25,
                            text: "Açılış Fiyatı: "),
                        TextSpan(
                            style: TextStyles.textStyle24, text: "1.500 TL")
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
                  height: SizeConfig.heightMultiplier * 1.5 * 2,
                ),
                // 9 Teklif
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      // 2.300 TL
                      Text(
                        " Teklifer 3",
                        style: TextStyles.textStyle11,
                        textAlign: TextAlign.center,
                      ),
                      Text("2.300 TL",
                          style: TextStyles.textStyle26
                              .copyWith(color: ColorsCustom.green),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1.5,
                ),
                /* Row(
                  children: <Widget>[
                    //  Expanded(child: Container(height: 0,),flex: 1,),
                    Expanded(
                      //follow unfollow
                      child: CustomRoundButton(
                        //style: TextStyles.textStyle49_white,
                        name: "EN YÜKSEK TEKLİF SAHİPSİNİZ",

                        onPressed: () {
                          //work detail page

                          // ExtendedNavigator.named("rootNav")
                          // .push(Routes.authorWorkDetails);
                        },
                      ),
                    ),
                    Expanded(
                      //follow unfollow
                      child: CustomFlatButtonTransparent(
                        color: ColorsCustom.coral,
                        //style: TextStyles.textStyle49_white,
                        name: "MAKSİMUM TEKLİFİNİZ:4100 TL ",

                        onPressed: () {
                          //work detail page

                          // ExtendedNavigator.named("rootNav")
                          // .push(Routes.authorWorkDetails);
                        },
                      ),
                    ),
                    //   Expanded(child: Container(height: 0,),flex: 1,)
                  ],
                ),*/

                Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 1 * SizeConfig.heightMultiplier),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                "EN YÜKSEK TEKLİF SAHİPSİNİZ",
                                style: TextStyles.textStyle27
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                            Flexible(
                                child: Text(
                              "MAKSİMUM TEKLİFİNİZ:4100 TL ",
                              style: TextStyles.textStyle27
                                  .copyWith(color: ColorsCustom.tomato),
                            )),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(26)),
                          border:
                              Border.all(color: ColorsCustom.green, width: 3),
                          color: Color(0x8cb5e424)),
                    ))
                  ],
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1.5,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      //follow unfollow
                      child: CustomRoundButton(
                        name: "Hizli Teklif",
                        //color: ColorsCustom.velvet,
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
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1.5,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.notifications_none,
                        color: ColorsCustom.steel_grey),
                    Text("Takibi Et",
                        style: TextStyles.textStyle27,
                        textAlign: TextAlign.center),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
