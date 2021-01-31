import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/profile/widgets/my_offers_detail.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/choice_chip.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/dots_page_indivator.dart';
import 'package:sized_context/sized_context.dart';

import 'auctions_tab/auctions_i_follow.dart';
import 'auctions_tab/auctions_i_won.dart';
import 'auctions_tab/my_auction_offers.dart';

//muza..
//2.6 2nd drawer

//Müzayede Tekliflerim     //Auctions My Offers  Tab 1     //My auction offers
//Takip Ettiğim Eserler      //I follow  Works Tab2        //Auction I follow
//Kazandığım Eserler             //My Earned works //tab3  also has a notification bubble in this tab//won//Auctions i won
//todo add bloc for tabs
String value1 = "1";

class MyOffersInAuction extends StatefulWidget {
  @override
  _MyOffersInAuctionState createState() => _MyOffersInAuctionState();
}

class _MyOffersInAuctionState extends State<MyOffersInAuction> {
  @override
  void initState() {

  }

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
          title: Text("Müzayede Tekliflerim",
              style: TextStyles.textStyle12, textAlign: TextAlign.center),
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

                        value1 = value.toString();
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

//removed after bloc is added
Widget buildWidget() {
  if (value1 == "1") {
    return MyAuctionOffers();
  } else if (value1 == "2") {
    return AuctionsIFollow();
  } else {
    return AuctionsIWon(); //zeplin_24
  }
}

//Below WIdges for AUctions I follow
//rename and move to seperate
//zeplin 3 ,1.1.3.2
//timer complete state
class Tab3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 00:01:32
            Text("00:01:32",
                style: TextStyles.textStyle29, textAlign: TextAlign.center),
            // Rectangle
          ],
        ),
        Container(
            width: 250,
            height: 6,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(3)),
                color: const Color(0xffd3d3d3))),
      ],
    );
  }
}

//initialState
class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomRoundButton(
      name: "3 Gün 01:01:57",
      style: TextStyles.textStyle49_white,
    ); //Müzayede Bitmiştir
  }
}

//show timer in the
//Progress bar appears after the last 3 minutes. the progress bar flashes. the progress bar color becomes red.
// If a new offer comes in the last 3 minutes, the counter is reset to 3 minutes again and starts counting down from 3 minutes
class Tab2 extends StatelessWidget {
  final TextStyle style;

  const Tab2({Key key, this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomRoundButton1(
      name: "Müzayede Bitmiştir",
      style: style,
    ); //Müzayede Bitmiştir
  }
}
