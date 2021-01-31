import 'package:flutter/cupertino.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';

import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/responsive_widget.dart';
import 'package:sized_context/sized_context.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../size_config.dart';

//SLider with text home page

class DotsPageIndicatorAuction extends StatelessWidget {
  final GestureTapCallback onTap;

  const DotsPageIndicatorAuction({Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 1);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: context.heightPct(.4),
              child: PageView(
                controller: controller,
                children: List.generate(
                    3,
                    (_) => Card(
                        child: Container(
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: context.heightPct(.3),
                                  width: context.widthPx,
                                  child: Image.asset(
                                      "assets/static/banner4.jpg",
                                      fit: BoxFit.fill),
                                ),

                                Text("9 - 18 Temmuz | ONLINE",
                                    style: TextStyles.textStyle54),
                                // Çağdaş ve Klasik Tab
                                Text("Çağdaş ve Klasik Tablolar",
                                    style: TextStyles.textStyle5),
                                // Müzayede No: 347
                                Text("Müzayede No: 347",
                                    style: TextStyles.textStyle6)
                              ],
                            )))),
              ),
            ),
            SizedBox(height: 16),
            Container(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: ExpandingDotsEffect(
                    expansionFactor: 4,
                    activeDotColor: ColorsCustom.velvet,
                    dotColor: ColorsCustom.steel_grey,
                    dotHeight: 6,
                    dotWidth: 6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DotsPageIndicatorBuy extends StatelessWidget {
  final GestureTapCallback onTap;

  const DotsPageIndicatorBuy({Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 1);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: context.heightPct(.4),
              child: PageView(
                controller: controller,
                children: List.generate(
                    3,
                    (_) => Card(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: context.heightPct(.3),
                              color: Colors.black12,
                              width: context.widthPx,
                              child: Image.asset(
                                  "assets/static/banner5.jpg",
                                  fit: BoxFit.fill),
                            ),

                            Text(" Art & Design Sayı 58",
                                style: TextStyles.textStyle5),
                            // 25.00 TL
                            Text("25.00 TL", style: TextStyles.textStyle51)
                          ],
                        ))),
              ),
            ),
            SizedBox(height: 2 * SizeConfig.heightMultiplier),
            Container(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: ExpandingDotsEffect(
                    expansionFactor: 4,
                    activeDotColor: ColorsCustom.velvet,
                    dotColor: ColorsCustom.steel_grey,
                    dotHeight: 6,
                    dotWidth: 6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





