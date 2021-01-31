import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/widgets/search/author_card.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/size_config.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/author_common/widgets/author_work_detail_responsive.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/author_common/widgets/each_offer_card.dart';
import 'package:sized_context/sized_context.dart';

//todo break into small depends on data source
class AuthorWorkDetails extends StatelessWidget {
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
          title: Text("Soyut Kompozisyon",
              style: TextStyles.textStyle12, textAlign: TextAlign.center),
        ),
        body: SingleChildScrollView(
            child: Container(
          color: Colors.white,
          //  decoration: boxShadowDecoration,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 1.5),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 1.5,
                  ),
                  Padding(
                    //  padding: EdgeInsets.all(0),
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 1.5,
                        vertical: SizeConfig.heightMultiplier * 1.5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 1.5,
                        ),
                        // 347. Müzayede Çağdaş
                        /*   Text("347. Müzayede Çağdaş ve Klasik Tablolar",
                            style: TextStyles.textStyle28),*/
                        AuthorWorkDetailWidget(),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 1.5,
                        ),

                        // Lot 1
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.widthMultiplier * 1.5 * 3),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  //color: Color(0xffeeeeeee),
                                  border: Border.all(
                                    color: ColorsCustom.colorGrey,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        "Esar Detayi",
                                        style: TextStyles.textStyle49.copyWith(
                                            color: ColorsCustom.colorBlack),
                                      ),
                                      SizedBox(
                                        height: SizeConfig.heightMultiplier,
                                      ),
                                      Text(
                                        "Provenance:",
                                        style: TextStyles.textStyle24,
                                      ),
                                      Text(
                                        "N.U. Koleksiyonu ",
                                        style: TextStyles.textStyle24,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.heightMultiplier,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: ColorsCustom.colorGrey,
                                    ),
                                  ),
                                  child: AuthorCard()),
                              SizedBox(
                                height: 1.5 * 2 * SizeConfig.heightMultiplier,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  //color: Color(0xffeeeeeee),
                                  border: Border.all(
                                    color: ColorsCustom.colorGrey,
                                  ),
                                ),
                                //past Auction Details Card
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      // Teklifler
                                      Text("Teklifler",
                                          style: TextStyles.textStyle5),

                                      SizedBox(
                                        height: SizeConfig.heightMultiplier *
                                            1.5 *
                                            2,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          // Zaman
                                          Text("Zaman",
                                              style: TextStyles.textStyle46),
                                          // Teklif Veren
                                          Text("Teklif Veren",
                                              style: TextStyles.textStyle46),
                                          // Teklif
                                          Text("Teklif",
                                              style: TextStyles.textStyle46)
                                        ],
                                      ),
                                      SizedBox(
                                        height:
                                            SizeConfig.heightMultiplier * 1.5,
                                      ),

                                      EachOfferCard(),
                                      SizedBox(
                                        height: context.heightPct(.025 / 2),
                                      ),
                                      EachOfferCard(),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
          ),
        )));
  }
}
