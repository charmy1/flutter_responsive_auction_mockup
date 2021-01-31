import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/application/timer_bloc/timer_bloc.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/auctions/current_auctions/widgets/arrow_page_indicator_current.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/auctions/past_auctions/past_auction_detail.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/auctions/widget/blinking_widget.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/widgets/search/bid_fast_dialog.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter_app_responsive_auction_mockup/router/router1.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sized_context/sized_context.dart';
import '../../../../size_config.dart';

//from the webview

class CurrentAuctionDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            ExtendedNavigator.named("auctionsNav").pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: ColorsCustom.steel_grey,
          ),
        ),
        centerTitle: true,
        title: Text("Güncel Müzayedeler",
            style: TextStyles.textStyle12, textAlign: TextAlign.center),
      ),
      body: CurrentAuctionDetailChild(),
    );
  }
}

class CurrentAuctionDetailChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: 1.5 * 2 * SizeConfig.widthMultiplier),
        decoration: boxShadowDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 1.5 * SizeConfig.heightMultiplier,
            ),
            // 347. Müzayede Çağdaş
            SizedBox(
              height: 1.5 * SizeConfig.heightMultiplier,
            ),
            // 347. Müzayede Çağdaş
            Text("347. Müzayede Çağdaş ve Klasik Tablolar",
                style: TextStyles.textStyle4.copyWith(fontFamily: 'libre')),

            SizedBox(
              height: SizeConfig.heightMultiplier,
            ),
            Text("222 adet eser",
                style: const TextStyle(
                    color: ColorsCustom.colorBlack,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProDisplay",
                    fontStyle: FontStyle.normal,
                    fontSize: 13.0)),
            // 18.07.2020 14:00 3+1
            SizedBox(
              height: SizeConfig.heightMultiplier,
            ),
            Text("18.07.2020 14:00 3+1 dk",
                style: const TextStyle(
                    color: ColorsCustom.colorBlack,
                    //const Color(0xffa3a3a3),
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFProDisplay",
                    fontStyle: FontStyle.normal,
                    fontSize: 13.0)),
            FilterWidgetPortrait(),
            SizedBox(
              height: SizeConfig.heightMultiplier,
            ),
            Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ArrowPageIndicatorCurrent(),
                  SizedBox(
                    height: 1.5 * 2 * SizeConfig.heightMultiplier,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 1.5),
                    child: Row(
                      children: <Widget>[
                        Expanded(

                            //follow unfollow
                            child: BlocConsumer<TimerBloc, TimerState>(
                          listener: (context, state) {},
                          builder: (context, state) {
//intent value

                            if (state is Running) {
                              //  if(state is Running) {

                              var dur = state.duration;
                              // }

                              final String minutesStr = ((dur / 60) % 60)
                                  .floor()
                                  .toString()
                                  .padLeft(2, '0');
                              final String secondsStr =
                                  (dur % 60).floor().toString().padLeft(2, '0');

                              /* return Text("$minutesStr:$secondsStr",
                                      style: TextStyles.textStyle29, textAlign: TextAlign.center);*/

                              return (dur <= 180)
                                  ? Container(
                                      width: context.widthPx,
                                      decoration: BoxDecoration(
                                        color: Color(0xfffbeaea),
                                        border: Border.all(
                                          color: ColorsCustom.watermelon,
                                          width: 1,
                                        ),

                                        //  color: ColorsCustom.tomato,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 2),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            BlinkWidget(
                                              children: <Widget>[
                                                Text(
                                                  "00:$minutesStr:$secondsStr",
                                                  style: TextStyles.textStyle29
                                                      .copyWith(
                                                          color: ColorsCustom
                                                              .tomato),
                                                ),
                                                Text(
                                                  "00:$minutesStr:$secondsStr",
                                                  style: TextStyles.textStyle29
                                                      .copyWith(
                                                          color: Colors
                                                              .transparent),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height:
                                                  SizeConfig.heightMultiplier *
                                                      1.5,
                                            ),
                                            Transform.rotate(
                                              angle: 3.14,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color:
                                                        ColorsCustom.watermelon,
                                                    width: 1,
                                                  ),

                                                  //  color: ColorsCustom.tomato,
                                                ),
                                                child: LinearProgressIndicator(
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    ColorsCustom.watermelon,
                                                  ),
                                                  value: dur / 180,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  : Container(
                                      width: context.widthPx,
                                      decoration: BoxDecoration(
                                        color: Color(0xffeeeeeee),
                                        border: Border.all(
                                            color: ColorsCustom.colorGrey),
                                      ),
                                      padding: const EdgeInsets.all(8),
                                      child: Center(
                                        child: Text(
                                          "3 Gün 00:$minutesStr:$secondsStr",
                                          style: TextStyles.textStyle8,
                                        ),
                                      ),
                                    );
                            } else {
                              return Align(
                                  alignment: Alignment.center,
                                  child: Text("Completed"));
                            }
                          },
                        ) //M
                            // Tab2(style: TextStyles.textStyle49_white),
                            ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 1.5 * 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 1 * SizeConfig.heightMultiplier,
                        ),

                        Text("Lot 1",
                            style: TextStyles.textStyle5.copyWith(
                                fontWeight: FontWeight.w600,
                                height: 1.5,
                                color: ColorsCustom.colorBlack)),
                        SizedBox(
                          height: 1 * SizeConfig.heightMultiplier,
                        ),
                        Text("Selim Turan (1915 - 1994)",
                            style: TextStyles.textStyle23.copyWith(
                                fontWeight: FontWeight.w600,
                                height: 1.5,
                                color: ColorsCustom.colorBlack)),
                        // Soyut Kompozisyon
                        SizedBox(
                          height: 1 * SizeConfig.heightMultiplier,
                        ),
                        Text("Soyut Kompozisyon",
                            style: TextStyles.textStyle13.copyWith(
                                fontWeight: FontWeight.w600,
                                color: ColorsCustom.colorBlack)),
                        // Kağıt üzerine karışı
                        SizedBox(
                          height: 1 * SizeConfig.heightMultiplier,
                        ),
                        Text("Kağıt üzerine karışık teknik, imzalı 12x20cm",
                            style: TextStyles.textStyle24),
                        SizedBox(
                          height: 1 * SizeConfig.heightMultiplier,
                        ),
                        Text(
                          "Açılış Fiyatı: 1.500 TL",
                          style: TextStyles.textStyle24,
                        ),
                        SizedBox(
                          height: 1 * SizeConfig.heightMultiplier,
                        ),
                        Text(
                          "Güncel Değer Ortalaması : 6.000 TL - 9.000 TL",
                          style: TextStyles.textStyle24,
                        ),
                        SizedBox(
                          height: 1 * SizeConfig.heightMultiplier,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: BlocBuilder<TimerBloc, TimerState>(
                              builder: (context, state) {
                            if (state is Running) {
                              return (state.duration < 180)
                                  ? BlinkWidget(
                                      children: [
                                        Text("2.300 TL  ",
                                            style:
                                                TextStyles.textStyle26.copyWith(
                                              color: ColorsCustom.tomato,
                                            )),
                                        Text("2.300 TL  ",
                                            style:
                                                TextStyles.textStyle26.copyWith(
                                              color: Colors.transparent,
                                            )),
                                      ],
                                    )
                                  : Text("2.300 TL  ",
                                      style: TextStyles.textStyle26.copyWith(
                                        color: ColorsCustom.tomato,
                                      ));
                            }
                            return Text("2.300 TL  ",
                                style: TextStyles.textStyle26.copyWith(
                                  color: ColorsCustom.tomato,
                                ));
                          }),
                        ),

                        SizedBox(
                          height: 1 * SizeConfig.heightMultiplier,
                        ),

                        Row(
                          children: <Widget>[
                            Expanded(
                              //Bid fast
                              child: CustomFlatButton(
                                color: ColorsCustom.velvet,
                                style: TextStyles.textStyle17
                                    .copyWith(color: Colors.white),
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
                            SizedBox(
                              width: SizeConfig.widthMultiplier,
                            ),
                            Expanded(
                              //follow unfollow
                              child: CustomFlatButton(
                                style: TextStyles.textStyle17
                                    .copyWith(color: Colors.white),
                                name: "Eser Detayı",
                                color: ColorsCustom.velvet,
                                onPressed: () {
                                  ExtendedNavigator.named("rootNav")
                                      .push(Routes.authorWorkDetails);
                                },
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 1 * SizeConfig.heightMultiplier,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Teklifler: 9",
                              style: TextStyles.textStyle27,
                              textAlign: TextAlign.center,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.notifications,
                                    color: ColorsCustom.steel_grey),
                                Text("Takibi Birak",
                                    style: TextStyles.textStyle27,
                                    textAlign: TextAlign.center),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 1 * SizeConfig.heightMultiplier,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
