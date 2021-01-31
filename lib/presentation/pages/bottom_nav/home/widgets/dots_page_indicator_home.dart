import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/responsive_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sized_context/sized_context.dart';
import '../../../../size_config.dart';
import 'home_page_responsive.dart';

class DotsPageIndicatorHome extends StatelessWidget {
  final String stringImage;

  const DotsPageIndicatorHome({Key key, this.stringImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 1);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 50 * SizeConfig.heightMultiplier,
          width: context.widthPx,
          child: PageView(
            controller: controller,
            children: List.generate(
                6,
                    (_) => Card(
                  child: ResponsiveWidget(
                    portraitLayout: PageIndicatorPortraitHome(),
                    landscapeLayout: PageIndicatorLandscapeHome(),
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