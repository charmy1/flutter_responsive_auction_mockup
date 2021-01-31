

import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:sized_context/sized_context.dart';

import '../../../../size_config.dart';

//Valuable signature
class DegList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return SizedBox(
            width:65* SizeConfig.widthMultiplier,

            child: Card(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Flexible(
                      flex: 3,
                      child: Container(
                       // height:context.heightPct(.35*.5),
                        //width: context.widthPx,
                        //color: Colors.grey,
                         child: Image.asset("assets/static/banner3.jpg",fit: BoxFit.fill,)
                      ),
                    ),

                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Abdurrahman Öztoprak",
                                style: TextStyles.textStyle5),
                            // 347. Çağdaş ve Klasi
                            Text("347. Çağdaş ve Klasik Tablolar",
                                style: TextStyles.textStyle6)
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          );
        });
  }
}
