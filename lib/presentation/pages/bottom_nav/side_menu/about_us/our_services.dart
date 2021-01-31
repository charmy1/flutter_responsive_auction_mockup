import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/profile/membership_types.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/bottom_nav/side_menu/about_us/widgets/service/our_services_responsive.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/size_config.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/responsive_widget.dart';
import 'package:sized_context/sized_context.dart';

class OurServices extends StatelessWidget {
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
          title: Text("Hizmetlerimiz",
              style: TextStyles.textStyle12, textAlign: TextAlign.center),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height:  SizeConfig.heightMultiplier,
            ),
            Text(
                "Konusunda tecrübeli uzmanlar, saygın üyelerden oluşan danışma kurulu ve müşterilerin duyduğu güven başarımızın temelleridir.",
                style:TextStyles.textStyle48 ),
            SizedBox(
              height: SizeConfig.heightMultiplier,
            ),
            Expanded(
              child: ResponsiveWidgetGrid(
                portraitLayout: ServiceWidgetPortrait(),
                landscapeLayout:ServiceWidgetLandscape() ,
              ),
            ),
          ],
        ));
  }
}




