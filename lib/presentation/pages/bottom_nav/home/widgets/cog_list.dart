import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:sized_context/sized_context.dart';

import '../../../../size_config.dart';

//Reproducible Content
class CogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return SizedBox(
            width:65* SizeConfig.widthMultiplier ,
            child: Card(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Flexible(
                      flex: 3,
                      child: Container(

                        child: Image.asset(
                          "assets/static/banner1.jpg",
                          fit: BoxFit.fill,
                        ),
                        // height:context.heightPct(.35*.5),
                        //width: context.widthPx,
                        //color: Colors.grey,
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            // Başlık
                            Text("Başlık", style: TextStyles.textStyle5),
                            // Kısa Bilgi
                            Text("Kısa Bilgi", style: TextStyles.textStyle6)
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
