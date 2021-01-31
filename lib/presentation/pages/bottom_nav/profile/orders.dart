import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/profile/widgets/order/each_order_item.dart';

import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter_app_responsive_auction_mockup/router/profile/profile_router.gr.dart';
import 'package:flutter_app_responsive_auction_mockup/router/router1.gr.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            ExtendedNavigator.root.pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: ColorsCustom.steel_grey,
          ),
        ),
        centerTitle: true,
        title: Text("Siparişlerim",
            style: TextStyles.textStyle12, textAlign: TextAlign.center),
      ),
      body: Container(
          decoration: boxShadowDecoration,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      EachOrderItem(title: "Sipariş Kodu",description: "1086",),
                      EachOrderItem(title: "Tarih",description: "28/07/2020 13:53",),
                      EachOrderItem(title: "Toplam Tutar",description: "9.595,76 TL",),
                      EachOrderItem(title: "Ödeme Yöntemi",description: "Banka Havalesi",),
                      EachOrderItem(title: "Ödeme Durumu",description: "Banka Havalesi Bekleniyor",),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Spacer(),
                          Flexible(flex:1,child: CustomRoundButton(name: "Detay",onPressed: () => ExtendedNavigator.named("rootNav").push(Routes.orderDetails),)),
                          Spacer()
                        ],
                      )



                    ],
                  ),
                )
              ),
            ),
          )),
    );
  }
}



