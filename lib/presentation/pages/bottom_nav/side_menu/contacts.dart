import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sized_context/sized_context.dart';

import '../../../size_config.dart';

class Contact extends StatelessWidget {
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
          title: Text("İletişim",
              style: TextStyles.textStyle12, textAlign: TextAlign.center),
        ),
        body: SingleChildScrollView(
          child: Container(
              decoration: boxShadowDecoration,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: context.heightPct(.025),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[

                                  Text(
                                      "  Müzayede -Online Müzayede",
                                      style: TextStyles.textStyle49,
                                      textAlign: TextAlign.center),
                                  SizedBox(
                                    height: context.heightPct(.025),
                                  ),
                                  // Adres
                                  Text("Adres", style: TextStyles.textStyle14),
                                  // Süleyman Seba Cad. ,
                                  Text(
                                      "Address Line",
                                      style: TextStyles.textStyle18),
                                  SizedBox(
                                    height: context.heightPct(.025),
                                  ),
                                  Container(
                                    color: Colors.grey,
                                    height: context.heightPct(.25),
                                    child: Center(
                                      child: Text("Map View "),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: context.heightPct(.025),
                        ),
                        EachContactRow(icon: "assets/images/svg/phone.svg",title: "Telefon",description: "000000",),
                        EachContactRow(icon: "assets/images/svg/whatsapp.svg",title: "WhatsApp",description: "000000",)  ,
                        EachContactRow(icon: "assets/images/svg/fax.svg",title: "Fax",description: "00000000"),
                        EachContactRow(icon: "assets/images/svg/mail.svg",title: "E-Posta",description: "test@g.com",)

                      ]))),
        ));
  }
}

class EachContactRow extends StatelessWidget {
  final String icon;
  final String title;
  final String description;

  const EachContactRow({Key key, this.icon, this.title, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              icon,
              width: 5*SizeConfig.widthMultiplier,
              height: 3*SizeConfig.heightMultiplier,
            ),
            SizedBox(
              width: context.widthPct(.025),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Telefon
                Text(title, style: TextStyles.textStyle14),
                // 0 212 236 24 60
                Text(description, style: TextStyles.textStyle18)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
