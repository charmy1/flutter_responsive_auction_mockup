import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/auctions/current_auctions/widgets/responsive_widget_current_auctions.dart';

import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/responsive_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sized_context/sized_context.dart';
import '../../../../../size_config.dart';

class DotsPageIndicatorCurrentAuctions extends StatefulWidget {
  final String stringImage;
  final GestureTapCallback onTap;

  const DotsPageIndicatorCurrentAuctions({Key key, this.stringImage, this.onTap})
      : super(key: key);

  @override
  _DotsPageIndicatorCurrentAuctionsState createState() => _DotsPageIndicatorCurrentAuctionsState();
}

class _DotsPageIndicatorCurrentAuctionsState extends State<DotsPageIndicatorCurrentAuctions> {

  int _currentPage = 0;
  final controller = PageController(viewportFraction: 1, initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 5) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      controller.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 50 * SizeConfig.heightMultiplier,
          width:context.widthPx,
          child: PageView(

            controller: controller,
            children: List.generate(
                6,
                    (_) => GestureDetector(
                  onTap: widget.onTap,
                  child: Card(
                    child: ResponsiveWidget(
                      portraitLayout: CurrentAuctionPortrait(),
                      landscapeLayout: CurrentAuctionLandScape(),
                    ),
                  ),
                )),
          ),
        ),
        SizedBox(height: 2 * SizeConfig.heightMultiplier),
        Container(
          child: SmoothPageIndicator(

            controller: controller,
            count: 6,
            effect: ExpandingDotsEffect(

                expansionFactor: 4,
                activeDotColor: ColorsCustom.velvet,
                dotColor: ColorsCustom.steel_grey,
                dotHeight: 6,
                dotWidth: 6),
          ),
        ),
      ],
    );
  }
}