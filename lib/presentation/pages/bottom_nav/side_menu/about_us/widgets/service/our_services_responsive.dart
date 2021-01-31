
import 'package:flutter/material.dart';

import 'each_service_card.dart';

class ServiceWidgetPortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 1.5 / 2,
      //width parts  /height parts ..todp drevice preview
      padding: const EdgeInsets.all(1.0),
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: [
        EachServiceCard(),
        EachServiceCard(),
        EachServiceCard(),
        EachServiceCard(),
        EachServiceCard()
      ],
    );
  }
}


class ServiceWidgetLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        EachServiceCard(),
        EachServiceCard(),
        EachServiceCard(),
      ],
    );
  }
}
