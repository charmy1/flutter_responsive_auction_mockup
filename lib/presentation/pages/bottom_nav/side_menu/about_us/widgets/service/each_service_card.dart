import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';

import '../../../../../../size_config.dart';

class EachServiceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: SizeConfig.heightMultiplier*25,

            color: Colors.grey,
            child: Image.asset("assets/static/5.jpg",
                fit: BoxFit.fill
            ),
          ),
          // Salon ve Online Müza
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Salon ve OnlineMüzayedeler",
                style: TextStyles.textStyle31,
                textAlign: TextAlign.center),
          )
        ],
      ),
    );
  }
}