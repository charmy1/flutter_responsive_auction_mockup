import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/size_config.dart';
import 'package:sized_context/sized_context.dart';

//Auctions List
//will change from network add const arg constructor
class MuzList extends StatelessWidget {
  final Axis scrollDirection;
  final GestureTapCallback onTap;

  const MuzList({Key key, @required this.scrollDirection, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: scrollDirection,
        itemCount: 6,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: onTap,
            child: SizedBox(
              width: 65 * SizeConfig.widthMultiplier,
              child: Card(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Flexible(
                          flex: 3,
                          child: Image.asset(
                            "assets/static/banner5.jpg",
                            fit: BoxFit.fill,
                          )),
                      Flexible(
                        flex: SizeConfig.isMobilePortrait ? 2 : 3,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.widthMultiplier),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Çağdaş ve Klasik Tablolar",
                                  style: TextStyles.textStyle5),
                              // 347. Müzayede | ONLI
                              Text(" 347. Müzayede | ONLINE",
                                  style: TextStyles.textStyle6),
                              // 9 - 18 Temmuz
                              Text(" 9 - 18 Temmuz",
                                  style: TextStyles.textStyle6)
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

