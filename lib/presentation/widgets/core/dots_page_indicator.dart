import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../size_config.dart';
import 'package:sized_context/sized_context.dart';

class DotsPageIndicator extends StatefulWidget {
  final String stringImage;
  final GestureTapCallback onTap;

  const DotsPageIndicator({Key key, this.stringImage, this.onTap})
      : super(key: key);

  @override
  _DotsPageIndicatorState createState() => _DotsPageIndicatorState();
}

class _DotsPageIndicatorState extends State<DotsPageIndicator> {
  //final controller = PageController(viewportFraction: 1);
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
        curve: Curves.linear,
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
          height: 35 * SizeConfig.heightMultiplier,
          width: context.widthPx,
          child: PageView(
            controller: controller,
            children: List.generate(
                6,
                (_) => GestureDetector(
                      onTap: widget.onTap,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            (widget.stringImage == null)
                                ? Expanded(
                                    flex: 4,
                                    child: Image.asset(
                                      "assets/static/banner4.jpg",
                                      fit: BoxFit.fitHeight,
                                    ),
                                  )
                                : Expanded(
                                    flex: 4,
                                    child: Image.asset(
                                      widget.stringImage,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                          ]),
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

//Flexible //
class DotsPageIndicator1 extends StatefulWidget {
  final String stringImage;
  final GestureTapCallback onTap;

  const DotsPageIndicator1({Key key, this.stringImage, this.onTap})
      : super(key: key);

  @override
  _DotsPageIndicator1State createState() => _DotsPageIndicator1State();
}

class _DotsPageIndicator1State extends State<DotsPageIndicator1> {
  //final controller = PageController(viewportFraction: 1);
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
        curve: Curves.linear,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Flexible(
          child: PageView(
            controller: controller,
            children: List.generate(
                6,
                (_) => GestureDetector(
                      onTap: widget.onTap,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            (widget.stringImage == null)
                                ? Expanded(
                                    flex: 4,
                                    child: Image.asset(
                                      "assets/static/banner4.jpg",
                                      fit: BoxFit.fitHeight,
                                    ),
                                  )
                                : Expanded(
                                    flex: 4,
                                    child: Image.asset(
                                      widget.stringImage,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                          ]),
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
