import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/size_config.dart';

class EachHistoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Rectangle
              Container(
                width: 47,
                height: 19,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(9.5)),
                    color: ColorsCustom.velvet),
                child: Center(
                  child: // 1981
                  Text("1981",
                      style: TextStyles.textStyle53, textAlign: TextAlign.center),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: VerticalDivider(),
                ),
              ),
              SizedBox(
                height:  SizeConfig.heightMultiplier,
              ),
            ],
          ),
          Expanded(
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    color: Colors.grey,
                    height: SizeConfig.heightMultiplier*30,
                    child: Image.asset("assets/static/1.jpg", fit: BoxFit.fill),
                  ),

                  SizedBox(
                    height:  SizeConfig.heightMultiplier,
                  ),
                  // 1981 Yılında Nurcan
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. ",
                        style: TextStyles.textStyle24),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}