import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/sidemenu_auctions/my_offers_in_auction.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/widgets/cartwidgets/custom_drop_down.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/top_menu/widgets/search/custom_search.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/dots_page_indicator.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/dots_page_indivator.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/border_image.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/responsive_widget.dart';
import 'package:flutter_app_responsive_auction_mockup/router/router1.gr.dart';
import 'package:sized_context/sized_context.dart';

import '../../../../size_config.dart';

class PastAuctionDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        elevation: 0,
        flexibleSpace: Container(
            //  decoration: boxShadowDecoration,
            ),
        // elevation: 0,
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
        title: Text("Geçmiş Müzayedeler",
            style: TextStyles.textStyle12, textAlign: TextAlign.center),
      ),
      body: SingleChildScrollView(
        child: Container(
          // decoration: boxShadowDecoration,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 1.5 * SizeConfig.widthMultiplier),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 1.5 * SizeConfig.heightMultiplier,
                        ),
                        // 347. Müzayede Çağdaş
                        Text("347. Müzayede Çağdaş ve Klasik Tablolar",
                            style: TextStyles.textStyle4
                                .copyWith(fontFamily: 'libre')),
                        // 222 adet eser
                        /* Align(
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
                          ),*/
                        SizedBox(
                          height: SizeConfig.heightMultiplier,
                        ),
                        Text("222 adet eser", style: TextStyles.textStyle13),
                        // 18.07.2020 14:00 3+1
                        SizedBox(
                          height: SizeConfig.heightMultiplier,
                        ),
                        Text("18.07.2020 14:00 3+1 dk",
                            style: TextStyles.textStyle13
                                .copyWith(color: ColorsCustom.colorBlack)),

                        TabletViewWidget(
                          tabletLayout: FilterWidgetLandscape(),
                          mobileLayout: FilterWidgetPortrait(),
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: TabletViewWidget(
                      tabletLayout: PastAuctionListLandscape(),
                      mobileLayout: PastAuctionListPortrait(),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}

class EachPastAuctionItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 1.5 * SizeConfig.widthMultiplier),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 1.5 * SizeConfig.heightMultiplier,
              ),
              // 347. Müzayede Çağdaş
              Text("347. Müzayede Çağdaş ve Klasik Tablolar",
                  style: TextStyles.textStyle4.copyWith(fontFamily: 'libre')),
              // 222 adet eser
              /* Align(
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
                        ),*/
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
              SizedBox(
                height: SizeConfig.heightMultiplier,
              ),
              TabletViewWidget(
                tabletLayout: FilterWidgetLandscape(),
                mobileLayout: FilterWidgetPortrait(),
              )
            ],
          ),
        ),
        TabletViewWidget(
          tabletLayout: PastAuctionListLandscape(),
          mobileLayout: PastAuctionListPortrait(),
        )
      ],
    );
  }
}

class FilterWidgetPortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: SizeConfig.heightMultiplier * 1.5 * 2,
        ),
        TextFormField(
          style:
              TextStyles.textStyle37.copyWith(color: ColorsCustom.colorBlack),
          decoration: formDecoration.copyWith(
            hintText: "Aranacak Kelime",
            hintStyle: TextStyles.textStyle37
                .copyWith(color: ColorsCustom.colorGreyText),
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier,
        ),
        TextFormField(
          style:
              TextStyles.textStyle37.copyWith(color: ColorsCustom.colorBlack),
          decoration: formDecoration.copyWith(
            hintText: "Lot No ile arama ",
            hintStyle: TextStyles.textStyle37
                .copyWith(color: ColorsCustom.colorGreyText),
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier,
        ),
        CustomDropDown(
          list: [
            'Hepsini Göster',
            'Abidin Dino(1913-1993) (4)',
            'Adem Genç (1994) (5)'
          ],
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier,
        ),
        CustomDropDown(
          list: ['Kategori  Arama ', 'Obje (1)', 'Tablo (227)'],
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier,
        ),
      ],
    );
  }
}

class FilterWidgetLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextFormField(
                style: TextStyles.textStyle37
                    .copyWith(color: ColorsCustom.colorBlack),
                decoration: formDecoration.copyWith(
                  hintText: "Aranacak Kelime",
                  hintStyle: TextStyles.textStyle37
                      .copyWith(color: ColorsCustom.colorGreyText),
                ),
              ),
            ),
            SizedBox(
              width: SizeConfig.widthMultiplier,
            ),
            Expanded(
              child: TextFormField(
                style: TextStyles.textStyle37
                    .copyWith(color: ColorsCustom.colorBlack),
                decoration: formDecoration.copyWith(
                  hintText: "Lot No ile arama ",
                  hintStyle: TextStyles.textStyle37
                      .copyWith(color: ColorsCustom.colorGreyText),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CustomDropDown(
                list: [
                  'Hepsini Göster',
                  'Abidin Dino(1913-1993) (4)',
                  'Adem Genç (1994) (5)'
                ],
              ),
            ),
            SizedBox(
              width: SizeConfig.widthMultiplier,
            ),
            Expanded(
              child: CustomDropDown(
                list: ['Kategori  Arama ', 'Obje (1)', 'Tablo (227)'],
              ),
            ),
          ],
        )
      ],
    );
  }
}

class EachItemDetails extends StatelessWidget {
  final String image;

  const EachItemDetails({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          //vertical: 1.5 * SizeConfig.heightMultiplier,
          horizontal: 1.5 * SizeConfig.widthMultiplier),
      width: 100 * SizeConfig.widthMultiplier,
      constraints: BoxConstraints(maxHeight: 75 * SizeConfig.heightMultiplier),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 1.5 * SizeConfig.heightMultiplier,
                      // horizontal: 1.5 * SizeConfig.widthMultiplier
                    ),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: ColorsCustom.colorGrey, width: 1)),
                    child: DotsPageIndicator1(
                      stringImage: image,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.stretch,

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: SizeConfig.heightMultiplier,
                ),
                Container(
                  width: context.widthPx,
                  decoration: BoxDecoration(
                    color: Color(0xffeeeeeee),
                    border: Border.all(color: ColorsCustom.colorGrey),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Center(
                    child: Text("MÜZAYEDE BİTMİŞTİR ",
                        style: TextStyles.textStyle49_white
                            .copyWith(color: ColorsCustom.velvet)),
                  ),
                ),
                FittedBox(
                  child: Text("Lot 1",
                      style: TextStyles.textStyle5.copyWith(
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                          color: ColorsCustom.colorBlack)),
                ),
                FittedBox(
                  child: Text("Selim Turan (1915 - 1994)",
                      style: TextStyles.textStyle23.copyWith(
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                          color: ColorsCustom.colorBlack)),
                ),
                // Soyut Kompozisyon
                FittedBox(
                  child: Text("Soyut Kompozisyon",
                      style: TextStyles.textStyle13.copyWith(
                          fontWeight: FontWeight.w600,
                          color: ColorsCustom.colorBlack)),
                ),
                // Kağıt üzerine karışı
                FittedBox(
                  child: Text("Kağıt üzerine karışık teknik, imzalı 12x20cm",
                      style: TextStyles.textStyle24),
                ),

                FittedBox(
                  child: Text("2.300 TL  ",
                      style: TextStyles.textStyle26
                          .copyWith(color: Color(0xff000000), height: 1.5),
                      textAlign: TextAlign.center),
                ),
                CustomFlatButtonTransparent1(
                  name: "Eser Detayı",
                  color: ColorsCustom.velvet,
                  onPressed: () {
                    //work detail page

                    ExtendedNavigator.named("rootNav")
                        .push(Routes.authorWorkDetails);
                  },
                ),
                FittedBox(
                  child: Text(
                    "Teklifler: 38",
                    style: TextStyles.textStyle11.copyWith(height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PastAuctionListPortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: 3,
        itemBuilder: (BuildContext ctxt, int index) {
          return EachItemDetails();
        });
  }
}

class PastAuctionListLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        childAspectRatio: 5 / 12,
        shrinkWrap: true,
        primary: false,
        crossAxisCount: (SizeConfig.isTabletLandscape) ? 3 : 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: List.generate(
          10,
          (index) => EachItemDetails(),
        ));
  }
}
