import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/border_image.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/responsive_widget.dart';

import '../../../../size_config.dart';
import '../../dots_page_indicator.dart';

class AuctionResultResponsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabletViewWidget(
      mobileLayout: AuctionResultMobile(),
      tabletLayout: AuctionResultTablet(),
    );
  }
}

class AuctionResultMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      primary: false,
      shrinkWrap: true,
      itemBuilder: (context, index) => EachItem(),
    );
    ;
  }
}

class AuctionResultTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        primary: false,
        crossAxisCount: (SizeConfig.isTabletLandscape) ? 3 : 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 5 / 8,
        shrinkWrap: true,
        children: List.generate(
          10,
          (index) => EachItem(),
        ));
  }
}

class EachItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100 * SizeConfig.widthMultiplier,
      constraints: BoxConstraints(maxHeight: 50 * SizeConfig.heightMultiplier),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 1.5 * SizeConfig.heightMultiplier,
                          horizontal: 1.5 * SizeConfig.widthMultiplier),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: ColorsCustom.colorGrey, width: 1)),
                      child: Image.asset(
                        "assets/static/banner4.jpg",
                        fit: BoxFit.contain,
                        width: 100 * SizeConfig.widthMultiplier,

                        ///height: 30 * SizeConfig.heightMultiplier,
                      ),
                    ),
                  )
                ],
              )),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 1.5 * 4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // 346. Müzayede Çağdaş
                  FittedBox(
                    child: Text("346. Müzayede Çağdaş ve Klasik Tablolar  ",
                        style: TextStyles.textStyle21),
                  ),

                  // Lot 69
                  FittedBox(
                    child: Text("Lot 1",
                        style: const TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w600,
                            fontFamily: "SFProDisplay",
                            fontStyle: FontStyle.normal,
                            fontSize: 14.0)),
                  ),

                  // “Gapı Gaptırmam”
                  FittedBox(
                    child: Text("Soyut Kompozisyon",
                        style: const TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w600,
                            fontFamily: "SFProDisplay",
                            fontStyle: FontStyle.normal,
                            fontSize: 13.0)),
                  ),

                  // Kağıt üzerine karışı
                  FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Text("Kağıt üzerine karışık teknik, imzalı 12x20cm",
                        style: TextStyles.textStyle24),
                  ),
                  // Selim Turan (1915 -

                  FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.center,
                    child: Text(
                      "6.818,04 TL",
                      style: TextStyles.textStyle26
                          .copyWith(color: ColorsCustom.colorBlack),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.center,
                    child: Text(
                      "TEKLİFLER: 38",
                      style: TextStyles.textStyle11,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
