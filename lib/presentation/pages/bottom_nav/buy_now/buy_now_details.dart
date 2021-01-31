import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/dots_page_indicator.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/dots_page_indivator.dart';
import 'package:flutter_app_responsive_auction_mockup/router/buy_now/buy_now_router.gr.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sized_context/sized_context.dart';

class BuyNowDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            ExtendedNavigator.named("buyNowNav").pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: ColorsCustom.steel_grey,
          ),
        ),
        centerTitle: true,
        title: Text("Ürün Detayları",
            style: TextStyles.textStyle12, textAlign: TextAlign.center),
      ),
      body: Container(
        decoration: boxShadowDecoration,
        child: SingleChildScrollView(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  DotsPageIndicator(
                    stringImage: "assets/static/global-art-design.jpg",
                  ),
                  SizedBox(
                    height: context.heightPct(.025),
                  ),
                  Text(" Global Art & Design Sayı 58",
                      style: TextStyles.textStyle5),
                  // 25.00 TL
                  // 25.00 TL (KDV Dahil)
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(style: TextStyles.textStyle51, text: "25.00 TL "),
                    TextSpan(style: TextStyles.textStyle6, text: "(KDV Dahil)")
                  ])),

                  SizedBox(
                    height: context.heightPct(.025),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(26)),
                                    color: ColorsCustom.velvet
                             ),
                                padding: const EdgeInsets.all(16),
                                child: Row(
                                  children: <Widget>[
                                    SvgPicture.asset(
                                      "assets/images/svg/cart.svg",
                                      color: Colors.white,
                                    ),
                                    Spacer(),
                                    Text("Sepete Ekle",
                                        style: TextStyles.textStyle16),
                                    Spacer(),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: context.heightPct(.025),
                  ),
                  Divider(
                    color: ColorsCustom.silver,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: context.heightPct(.025 * 2),
                  ),
                  // DEĞİŞİM ve DESTEK Co
                  Text('''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. 
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. 
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. 
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. 
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis.  ''', style: TextStyles.textStyle24)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
