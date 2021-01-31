import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/home/widgets/cog_list.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/home/widgets/deg_list.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/home/widgets/dots_page_indicator_home.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/home/widgets/muz_list.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/dots_page_indivator.dart';

import '../../../size_config.dart';

class HomePage1 extends StatefulWidget {
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: boxShadowDecoration,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 1.5 * SizeConfig.widthMultiplier),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: SizeConfig.heightMultiplier,
              ),
              DotsPageIndicatorHome(), //357 ~.43/816
              SizedBox(
                height: 1.5 * SizeConfig.heightMultiplier,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 1.5 * SizeConfig.widthMultiplier,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 1.5 * SizeConfig.heightMultiplier,
                    ),
                    Text("Müzayedeler", style: TextStyles.textStyle4),
                    Container(
                        constraints: BoxConstraints(
                            maxHeight: 30 * SizeConfig.heightMultiplier),
                        child: MuzList(
                          scrollDirection: Axis.horizontal, //216~.26 /816
                        )),
                    SizedBox(
                      height: 1.5 * SizeConfig.heightMultiplier,
                    ),
                    Text("Değerli İmzalar", style: TextStyles.textStyle4),
                    Container(
                      constraints: BoxConstraints(
                          maxHeight: 30 * SizeConfig.heightMultiplier),
                      child: DegList(),
                    ),
                    SizedBox(
                      height: 1.5 * SizeConfig.heightMultiplier,
                    ),
                    Text("Çoğaltılabilir İçerik", style: TextStyles.textStyle4),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      constraints: BoxConstraints(
                          maxHeight: 30 * SizeConfig.heightMultiplier),
                      child: CogList(),
                    ),
                    SizedBox(
                      height: 1.5 * 2*SizeConfig.heightMultiplier,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
