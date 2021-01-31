import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/border_image.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:sized_context/sized_context.dart';

import '../../../../../size_config.dart';

class ArrowPageIndicatorCurrent extends StatefulWidget {
  final String stringImage;
  final GestureTapCallback onTap;

  const ArrowPageIndicatorCurrent({Key key, this.stringImage, this.onTap})
      : super(key: key);

  @override
  _ArrowPageIndicatorCurrentState createState() =>
      _ArrowPageIndicatorCurrentState();
}

class _ArrowPageIndicatorCurrentState extends State<ArrowPageIndicatorCurrent> {
  //final controller = PageController(viewportFraction: 1);
  int _currentPage = 0;
  final controller = PageController(viewportFraction: 1, initialPage: 0);

  // var itemList = [0, 1];

  @override
  void initState() {
    super.initState();
    /*Timer.periodic(Duration(seconds: 5), (Timer timer) {
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
    });*/
  }

  onclick() {
    if (_currentPage < 1) {
      setState(() {
        _currentPage++;
      });
    } else {
      setState(() {
        _currentPage--;
      });
    }

    controller.animateToPage(
      _currentPage,
      duration: Duration(milliseconds: 350),
      curve: Curves.linear,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        BorderWidget(
          widget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                  child: Icon(
                    Icons.chevron_left,
                    color: ColorsCustom.velvet,
                  ),
                  onTap: () => onclick()),
              Expanded(
                child: SizedBox(
                  height: 35 * SizeConfig.heightMultiplier,
                  width: context.widthPx,
                  child: PageView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: controller,
                    children: List.generate(
                        2,
                        (_) => GestureDetector(
                              onTap: widget.onTap,
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    (widget.stringImage == null)
                                        ? Expanded(
                                            flex: 4,
                                            child: Image.asset(
                                              "assets/static/banner4.jpg",
                                              fit: BoxFit.contain,
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
              ),
              GestureDetector(
                  child: Icon(
                    Icons.chevron_right,
                    color: ColorsCustom.velvet,
                  ),
                  onTap: () => onclick()),
            ],
          ),
        ),
      ],
    );
  }
}
