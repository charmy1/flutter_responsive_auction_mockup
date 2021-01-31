import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:sized_context/sized_context.dart';
class PageIndicatorPortraitHome extends StatelessWidget {
  final String stringImage;

  const PageIndicatorPortraitHome({Key key, this.stringImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        (stringImage == null)
            ? Expanded(
          flex: 4,
          child: Image.asset(
            "assets/static/banner2.jpg",
            fit: BoxFit.fill,
          ),
        )
            : Expanded(
          flex: 4,
          child: Image.asset(
            stringImage,
            fit: BoxFit.fill,
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
              color: Colors.indigo,
              width: context.widthPx,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      Text("FERRUH BAŞAĞA",
                          style: TextStyles.textStyle5
                              .copyWith(color: Colors.white)),
                      Text('''"Kirmizi Kuşlar" ''',
                          style: TextStyles.textStyle6
                              .copyWith(color: Colors.white)),
                    ],
                  ),
                  Text("347. Müzayede |9 - 18 Temmuz",
                      style:
                      TextStyles.textStyle6.copyWith(color: Colors.white)),
                ],
              )),
        ),
      ],
    );
  }
}

class PageIndicatorLandscapeHome extends StatelessWidget {
  final String stringImage;

  const PageIndicatorLandscapeHome({Key key, this.stringImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        (stringImage == null)
            ? Expanded(
          child: Image.asset(
            "assets/static/banner2.jpg",
            fit: BoxFit.fill,
          ),
        )
            : Expanded(
          child: Image.asset(
            stringImage,
            fit: BoxFit.fill,
          ),
        ),
        Expanded(
          child: Container(
              color: Colors.indigo,
              width: context.widthPx,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      Text("FERRUH BAŞAĞA",
                          style: TextStyles.textStyle5
                              .copyWith(color: Colors.white)),
                      Text('''"Kirmizi Kuşlar" ''',
                          style: TextStyles.textStyle6
                              .copyWith(color: Colors.white)),
                    ],
                  ),
                  Text("347. Müzayede |9 - 18 Temmuz",
                      style:
                      TextStyles.textStyle6.copyWith(color: Colors.white)),
                ],
              )),
        ),
      ],
    );
  }
}
