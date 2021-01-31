import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/about_us/widgets/records/dots_page_indicator_records.dart';

import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/dots_page_indivator.dart';
import 'package:sized_context/sized_context.dart';

class AuctionRecords extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              ExtendedNavigator.named("rootNav").pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: ColorsCustom.steel_grey,
            ),
          ),
          centerTitle: true,
          title: Text("Müzayede Rekorları",
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
                    DotsPageIndicatorRecords(),
                    SizedBox(
                      height: context.heightPct(.025),
                    ),

                    Text("text (1915 - 1994)",
                        style: TextStyles.textStyle33),
                    // “Yeşil Cami Önü”
                    Text("“test”", style: TextStyles.textStyle13),
                    // 291. Müzayede Lot:13
                    Text("291. Müzayede Lot:130",
                        style: TextStyles.textStyle24),
                    // Satış Fiyatı: 13.500
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          style: TextStyles.textStyle25,
                          text: "Satış Fiyatı: "),
                      TextSpan(
                          style: TextStyles.textStyle24,
                          text: "13.500.000 TL (4.650.000 USD)")
                    ])),

                    SizedBox(
                      height: context.heightPct(.025),
                    ),
                    Divider(),
                    SizedBox(
                      height: context.heightPct(.025),
                    ),
                    // Türk Sanat Piyasasın
                    Text(
                        '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. 
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. 
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. 
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. 
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. ''',
                        style: TextStyles.textStyle24)
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
