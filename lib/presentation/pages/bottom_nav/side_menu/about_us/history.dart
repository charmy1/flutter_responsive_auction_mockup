import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/about_us/widgets/history/each_history_card.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/size_config.dart';
import 'package:sized_context/sized_context.dart';

class History extends StatelessWidget {
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
          title: Text("Tarihçe",
              style: TextStyles.textStyle12, textAlign: TextAlign.center),
        ),
        body: Container(
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
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return EachHistoryCard();
                          },
                        ),
                      )
                    ]))));
  }
}


