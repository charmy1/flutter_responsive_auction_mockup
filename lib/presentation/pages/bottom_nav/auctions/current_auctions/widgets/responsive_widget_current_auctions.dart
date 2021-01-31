
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:sized_context/sized_context.dart';
import '../../../../../size_config.dart';

class CurrentAuctionPortrait extends StatelessWidget {
  final String stringImage;

  const CurrentAuctionPortrait({Key key, this.stringImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        (stringImage == null)
            ? Expanded(
          flex: 4,
          child: Image.asset(
            "assets/static/banner4.jpg",
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
        Expanded(
          flex: 1,
          child: Container(
            // color: Colors.indigo,
              width: context.widthPx,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 1.5 * SizeConfig.widthMultiplier),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("9 - 18 Temmuz | ONLINE",
                        style: TextStyles.textStyle54),
                    // Çağdaş ve Klasik Tab
                    Text("Çağdaş ve Klasik Tablolar",
                        style: TextStyles.textStyle5),
                    // Müzayede No: 347
                    Text("Müzayede No: 347", style: TextStyles.textStyle6)
                  ],
                ),
              )),
        ),
      ],
    );
  }
}

class CurrentAuctionLandScape extends StatelessWidget {
  final String stringImage;

  const CurrentAuctionLandScape({Key key, this.stringImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        (stringImage == null)
            ? Expanded(
          child: Image.asset(
            "assets/static/banner4.jpg",
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
            //  color: Colors.indigo,
              width: context.widthPx,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("9 - 18 Temmuz | ONLINE", style: TextStyles.textStyle54),
                  // Çağdaş ve Klasik Tab
                  Text("Çağdaş ve Klasik Tablolar",
                      style: TextStyles.textStyle5),
                  // Müzayede No: 347
                  Text("Müzayede No: 347", style: TextStyles.textStyle6)
                ],
              )),
        ),
      ],
    );
  }
}
