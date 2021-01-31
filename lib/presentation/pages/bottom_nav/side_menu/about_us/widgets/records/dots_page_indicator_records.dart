import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/size_config.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotsPageIndicatorRecords extends StatelessWidget {
  final controller = PageController(viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: SizeConfig.heightMultiplier*60,
            child: PageView(
              controller: controller,
              children: List.generate(
                  6,
                      (_) => Card(
                    child: Container(
                      height: SizeConfig.heightMultiplier*60,
                      width: SizeConfig.widthMultiplier*100,
                      color: Colors.black12,
                      child: Image.asset("assets/static/restore.jpg"),
                    ),
                  )),
            ),
          ),
          SizedBox(height: 16),
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
      ),
    );
  }
}