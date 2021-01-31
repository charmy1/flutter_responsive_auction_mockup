import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/responsive_widget.dart';
import 'package:flutter_app_responsive_auction_mockup/router/router1.gr.dart';
import 'package:sized_context/sized_context.dart';

import '../../../../size_config.dart';
import 'author_auction_pic_list.dart';

class AuthorCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabletViewWidget1(
      tabletLayout: AuthorCardTablet1(),
      mobileLayout: AuthorCardMobile(),
    );
  }
}

class AuthorCardMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 1.5 * 2,
          vertical: SizeConfig.heightMultiplier * 1.5 * 2),
      child: Column(
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
       crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Mehmet Güleryüz (1914- 1994)",
            style: TextStyles.textStyle30,
            textAlign: TextAlign.left,
          ),

          SizedBox(
            height: SizeConfig.heightMultiplier,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          "assets/static/banner5.jpg",
                        )),
                  ),
                  width: 25 * SizeConfig.widthMultiplier,
                  height: 13 * SizeConfig.heightMultiplier),
              SizedBox(
                width: context.widthPct(.02),
              ),
              /* Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Mehmet Güleryüz
                  Text("Mehmet Güleryüz", style: TextStyles.textStyle30),
                  // 1938
                  Text("1938", style: TextStyles.textStyle7)
                ],
              )*/
            ],
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier,
          ),
          Text(
              "Çizgilerin, Güleryüz’ün sanatına özgü akıcı uyumu, alt yapıdaki renk üzerinde yer yer derine kaçan ve üç boyutluluk etkisini öne çıkaran yer yer de bezek (ornament) etkisine çağrışım yapan görüntüsü, resminin ilgi çekici karakteridir.İzleyiciyi şaşırtarak sürprizler karşısında bırakmak yerine, onu düşünerek şaşırtmaktan yana olmuştur Mehmet Güleryüz. Böyle bir öncelik-sonralık yöntemi, yenilikçi sanatın çok sık kullandığı bir yol değil. İzleyici genellikle duyumlarına yansıyan görüntünün zihinse...",
              style: TextStyles.textStyle24),
          SizedBox(
            height: SizeConfig.heightMultiplier,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: CustomFlatButton(
                  color: ColorsCustom.velvet,
                  onPressed: () => ExtendedNavigator.named("rootNav")
                      .push(Routes.authorProfile),
                  name: "SANATÇI PROFİLİ ",
                  style: TextStyles.textStyle49_white
                      .copyWith(fontSize: 1.8 * SizeConfig.textMultiplier),
                ),
              ),
              Spacer()
            ],
          ),
          Container(
              //height: 35 * SizeConfig.heightMultiplier,
              child: AuthorAuctionPicList())
        ],
      ),
    );
  }
}

class AuthorCardTablet1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.widthPx,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier * 1.5 * 2,
            vertical: SizeConfig.heightMultiplier * 1.5 * 2),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mehmet Güleryüz (1914- 1994)",
                    style: TextStyles.textStyle30,
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  "assets/static/banner5.jpg",
                                )),
                          ),
                          width: 25 * SizeConfig.widthMultiplier,
                          height: 13 * SizeConfig.heightMultiplier),
                      SizedBox(
                        width: context.widthPct(.02),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier,
                  ),
                  Text(
                      "Çizgilerin, Güleryüz’ün sanatına özgü akıcı uyumu, alt yapıdaki renk üzerinde yer yer derine kaçan ve üç boyutluluk etkisini öne çıkaran yer yer de bezek (ornament) etkisine çağrışım yapan görüntüsü, resminin ilgi çekici karakteridir.İzleyiciyi şaşırtarak sürprizler karşısında bırakmak yerine, onu düşünerek şaşırtmaktan yana olmuştur Mehmet Güleryüz. Böyle bir öncelik-sonralık yöntemi, yenilikçi sanatın çok sık kullandığı bir yol değil. İzleyici genellikle duyumlarına yansıyan görüntünün zihinse...",
                      style: TextStyles.textStyle24),
                  SizedBox(
                    height: SizeConfig.heightMultiplier,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: CustomFlatButton(
                          color: ColorsCustom.velvet,
                          onPressed: () => ExtendedNavigator.named("rootNav")
                              .push(Routes.authorProfile),
                          name: "SANATÇI PROFİLİ ",
                          style: TextStyles.textStyle49_white.copyWith(
                              fontSize: 1.8 * SizeConfig.textMultiplier),
                        ),
                      ),
                      Spacer()
                    ],
                  ),
                ],
              ),
            ),
            Container(
                width: 30 * SizeConfig.widthMultiplier,
                child: AuthorAuctionPicList()),
          ],
        ),
      ),
    );
  }
}
