
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';

import 'each_member_type.dart';

class EachMemberPortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 2/3,
            //width parts  /height parts ..todp drevice preview
            padding: const EdgeInsets.all(1.0),
            mainAxisSpacing: 1.0,
            crossAxisSpacing: 1.0,
            children: [
              EachMemberType(),
              EachMemberType(),
              EachMemberType(),
              EachMemberType(),
            ],
          ),
        ),
        CustomRoundButton(
          name: "Yükselt",
        )
      ],
    );
  }
}

class EachMemberLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView(
              children: [
                EachMemberType1(),
                EachMemberType1(),
                EachMemberType1(),
                EachMemberType1()
              ],
            ))
      ],
    );
  }
}
