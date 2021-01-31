import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';

import '../../../../../size_config.dart';
import 'package:sized_context/sized_context.dart';


class CurrentAuctionList extends StatelessWidget {
  final Axis scrollDirection;
  final GestureTapCallback onTap;

  const CurrentAuctionList({Key key, @required this.scrollDirection, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: scrollDirection,
        itemCount: 6,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: onTap,
            child: Container(
              constraints:
              BoxConstraints(maxHeight: 40 * SizeConfig.heightMultiplier),
              child: Card(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Flexible(
                          flex: 5,
                          child: Image.asset("assets/static/banner5.jpg",
                              fit: BoxFit.fill)),
                      Flexible(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 1.5 * 2 * SizeConfig.widthMultiplier),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("9 - 18 Temmuz | ONLINE",
                                  style: TextStyles.textStyle54),
                              Text("Çağdaş ve Klasik Tablolar  ",
                                  style: TextStyles.textStyle5),
                              Text("Müzayede No: 347",
                                  style: TextStyles.textStyle6),
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          );
        });
  }
}

class CurrentAuctionGrid extends StatelessWidget {
  final GestureTapCallback onTap;

  const CurrentAuctionGrid({Key key, @required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: (SizeConfig.isTabletLandscape) ? 3 : 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: List.generate(
          10,
              (index) => GestureDetector(
            onTap: onTap,
            child: Container(
                constraints:
                BoxConstraints(maxHeight: 40 * SizeConfig.heightMultiplier,
                    maxWidth: context.widthPx/3),
//          child: Card(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Flexible(
                        flex: 3,
                        child: Image.asset("assets/static/banner5.jpg",
                            fit: BoxFit.fill)),
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 1.5 * 2 * SizeConfig.widthMultiplier),
                        child: FittedBox(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("9 - 18 Temmuz | ONLINE",
                                  style: TextStyles.textStyle54),
                              Text("Çağdaş ve Klasik Tablolar  ",
                                  style: TextStyles.textStyle5),
                              Text("Müzayede No: 347",
                                  style: TextStyles.textStyle6),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          ),
        ));
  }
}
