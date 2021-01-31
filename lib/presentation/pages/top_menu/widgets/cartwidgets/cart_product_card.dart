import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/size_config.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter_app_responsive_auction_mockup/router/router1.gr.dart';

import 'package:flutter_svg/svg.dart';
import 'package:sized_context/sized_context.dart';

class CartProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // Rectangle
                  Container(
                      width: 42,
                      height: 53, //todo change width and height

                      child: Image.asset("assets/static/banner5.jpg",
                          fit: BoxFit.fill),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(1)))),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(style: TextStyles.textStyle5, text: "1 x "),
                    TextSpan(
                        style: TextStyles.textStyle21, text: "Ortyantalizm")
                  ])),
                  SvgPicture.asset(
                    "assets/images/svg/incorrect_b.svg",
                  ),
                ],
              ),
              Divider(
                color: ColorsCustom.silver,
              ),
              // Toplam Tutar
              Text("Toplam Tutar", style: TextStyles.textStyle6),
              // 150.00 TL
              Text("150.00 TL", style: TextStyles.textStyle33),

              SizedBox(
                height: context.heightPct(.025),
              ),
              CustomRoundButton(
                name: "Satın Al", //Buy on click
                onPressed: () {
                  ExtendedNavigator.named("rootNav").push(Routes.cartBuy);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CartAddDeleteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            // Eserler
            Text("Eserler", style: TextStyles.textStyle6),
            // 150.00 TL
            Text("150.00 TL",
                style:TextStyles.textStyle33 )
          ],
        ),
        Spacer(),
        Row(
          children: <Widget>[
            Container(
              height: 3.61*SizeConfig.heightMultiplier,//3.6
              width: 6.94*SizeConfig.widthMultiplier,//6.92
              decoration: BoxDecoration(
                  color: ColorsCustom.steel_grey, shape: BoxShape.circle),
              child: Center(
                child: Text("-",
                    style:
                        TextStyles.textStyle28.copyWith(color: Colors.white)),
              ),
            ),

            SizedBox(
              width: context.widthPct(.01),
            ),
            Text("1", style: TextStyles.textStyle28),
            SizedBox(
              width: context.widthPct(.01),
            ),
            // Shape
            Container(
              height: 3.61*SizeConfig.heightMultiplier,//3.6
              width: 6.94*SizeConfig.widthMultiplier,//6.92
              decoration: BoxDecoration(
                  color: ColorsCustom.velvet, shape: BoxShape.circle),
              child: Center(
                child: Text("+",
                    style:
                        TextStyles.textStyle28.copyWith(color: Colors.white)),
              ),
            )
          ],
        )
      ],
    );
  }
}

class CartSummaryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // Rectangle
                  Container(
                      width: 42,
                      height: 53,
                      child: Image.asset("assets/static/banner5.jpg",
                          fit: BoxFit.fill), //todo change width and height
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(1)))),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(style: TextStyles.textStyle5, text: "1 x "),
                    TextSpan(
                        style: TextStyles.textStyle21, text: "Ortyantalizm")
                  ])),
                  SvgPicture.asset(
                    "assets/images/svg/incorrect_b.svg",
                  ),
                ],
              ),
              Divider(
                color: ColorsCustom.silver,
              ),
              // Toplam Tutar
              Text("Toplam Tutar", style: TextStyles.textStyle6),
              // 150.00 TL
              Text("150.00 TL",
                  style: TextStyles.textStyle33),

              SizedBox(
                height: context.heightPct(.025),
              ),
              CartAddDeleteButton()
            ],
          ),
        ),
      ),
    );
  }
}
