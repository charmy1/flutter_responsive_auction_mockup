import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/dots_page_indicator.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/dots_page_indivator.dart';
import 'package:sized_context/sized_context.dart';

class AntiquePalace extends StatelessWidget {
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
          title: Text("Antik Palace",
              style: TextStyles.textStyle12, textAlign: TextAlign.center),
        ),
        body: Container(
          decoration: boxShadowDecoration,
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    DotsPageIndicator(
                      stringImage: "assets/static/palace.jpg",
                    ),
                    SizedBox(
                      height: context.heightPct(.025),
                    ),
                    // Antik Palace’ın satı
                    Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. ",
                        style: TextStyles.textStyle24)
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
