//widgets
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter_app_responsive_auction_mockup/router/buy_now/buy_now_router.gr.dart';

import '../../../../size_config.dart';

class BuyNowMobile extends StatelessWidget {
  final Axis scrollDirection;
  final GestureTapCallback onTap;

  const BuyNowMobile({Key key, @required this.scrollDirection, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: scrollDirection,
        itemCount: 6,
        itemBuilder: (context, index) {
          return GestureDetector(
            //list set constraints on item
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
                          child: Image.asset(
                              "assets/static/global-art-design.jpg",
                              fit: BoxFit.fill)),
                      Flexible(
                        flex: 5,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 1.5 * 2 * SizeConfig.widthMultiplier),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(" Global Art & Design Sayı 58 ",
                                  style: TextStyles.textStyle5),
                              // 25.00 TL
                              Text(
                                "25.00 TL",
                                style: TextStyles.textStyle52,
                              ),
                              Row(
                                children: <Widget>[
                                  Spacer(),
                                  Expanded(
                                      child: CustomRoundButton(
                                    name: "Ürün Detayı ",
                                    onPressed: () =>
                                        ExtendedNavigator.named("buyNowNav")
                                            .push(BuyNowRoutes.buyNowDetails),
                                  ) //Product details,
                                      )
                                ],
                              )
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

class BuyNowGrid extends StatelessWidget {
  const BuyNowGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        //childAspectRatio: 3/2,
        crossAxisCount: (SizeConfig.isTabletLandscape) ? 3 : 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: List.generate(
          10,
          (index) => GestureDetector(
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Flexible(
                      flex: 5,
                      child: Image.asset(
                          "assets/static/global-art-design.jpg",
                          fit: BoxFit.fill)),
                  Flexible(
                    flex: 4,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FittedBox(
                          child: Text(" Global Art & Design Sayı 58",
                              style: TextStyles.textStyle5),
                        ),
                        // 25.00 TL
                        FittedBox(
                          child: Text(
                            "25.00 TL",
                            style: TextStyles.textStyle52,
                          ),
                        ),
                        IntrinsicWidth(
                          child: Row(
                            // mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                child: Container(),
                                flex: 1,
                              ),
                              Expanded(
                                  flex: 4,
                                  child: CustomRoundButton(
                                    name: "Ürün Detayı",
                                    onPressed: () =>
                                        ExtendedNavigator.named("buyNowNav")
                                            .push(BuyNowRoutes.buyNowDetails),
                                  ) //Product details,
                                  )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
