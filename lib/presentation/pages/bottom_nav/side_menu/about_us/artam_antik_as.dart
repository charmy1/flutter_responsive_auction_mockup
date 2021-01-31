import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:sized_context/sized_context.dart';

class AntikAs extends StatelessWidget {
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
          title: Text("Hakkında",
              style: TextStyles.textStyle12, textAlign: TextAlign.center),
        ),
        body: Container(
            decoration: boxShadowDecoration,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: context.heightPct(.025),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              //  Antik A.Ş.
                               Text(" Antik A.Ş.",
                                  style: TextStyles.textStyle39),

                              SizedBox(
                                height: context.heightPct(.025 / 2),
                              ),
                              // Antik A.Ş. düzenledi
                              Text(
                                  '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. .''',
                                  style: TextStyles.textStyle24),
                              SizedBox(
                                height: context.heightPct(.025 / 2),
                              ),
                              Container(
                                height: context.heightPct(.4),
                                color: Colors.black12,
                                child: Image.asset(

                                  "assets/static/about1.jpg",
                                  width: context.widthPx,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                height: context.heightPct(.01),
                              ),
                              // Antik A.Ş. düzenledi
                              Text(
                                  '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. ''',
                                  style: TextStyles.textStyle24),

                              SizedBox(
                                height: context.heightPct(.025 / 2),
                              ),
                              Container(
                                height: context.heightPct(.4),
                                color: Colors.black12,
                                child: Image.asset(

                                  "assets/static/about2.jpg",
                                  width: context.widthPx,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                height: context.heightPct(.025 / 2),
                              ),

                              // Antik A.Ş. birçok kü
                              Text(
                                  '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. ''',
                                  style: TextStyles.textStyle24)
                            ],
                          ),
                        ]),
                  ),
                ))));
  }
}
