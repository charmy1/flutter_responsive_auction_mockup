import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/infrastructure/home/home_model.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/bottom_nav_page.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerWidget extends StatelessWidget {
  final BuildContext context;

  const DrawerWidget({Key key, this.context}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: SizeConfig.heightMultiplier * 6,
          ),

          Expanded(
            child: ListView.builder(
              primary: false,
              shrinkWrap: false,
              itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.5),
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorsCustom.silver),
                      color: Colors.white,
                    ),
                    child: EntryItem(data[index], context)),
              ),
              itemCount: data.length,
            ),
          )
        ],
      ),
    );
  }
}
