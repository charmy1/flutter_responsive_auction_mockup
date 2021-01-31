import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_svg/svg.dart';

class ShippingFees extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              ExtendedNavigator.named("profileNav").pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: ColorsCustom.steel_grey,
            ),
          ),
          centerTitle: true,
          title: Text("Sipariş ve Teslimat",
              style: TextStyles.textStyle12, textAlign: TextAlign.center),
        ),
        body: SingleChildScrollView(
          child: Container(
              decoration: boxShadowDecoration,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[Text("Lorem ipsum")]))),
        ));
  }
}
