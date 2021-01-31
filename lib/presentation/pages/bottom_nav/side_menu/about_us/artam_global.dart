import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/size_config.dart';
import 'package:sized_context/sized_context.dart';

class Global extends StatelessWidget {
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
          title: Text(" Global Art Sergi Salonu",
              style: TextStyles.textStyle12, textAlign: TextAlign.center),
        ),
        body: Container(
            decoration: boxShadowDecoration,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SizedBox(
                          height: context.heightPct(.025),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                        ),

                        Container(
                          height: 25 * SizeConfig.heightMultiplier,
                          child: Image.asset("assets/static/global.jpg",
                              fit: BoxFit.fill),
                        ),
                        // Çağdaş sanatın yeni
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              style: TextStyles.textStyle49,
                              text:
                                  "Çağdaş sanatın yeni yüzü  Global Art Sergi Salonu"),
                          TextSpan(
                              style: TextStyles.textStyle24,
                              text:
                                  '''\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. ''')
                        ]))
                      ]),
                ))));
  }
}
