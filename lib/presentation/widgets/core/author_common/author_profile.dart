import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/author_common/widgets/auction_results_profile_tab_responsive.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/border_image.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/choice_chip.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/dots_page_indicator.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/dots_page_indivator.dart';

import '../../../size_config.dart';

class AuthorProfile extends StatefulWidget {
  @override
  _AuthorProfileState createState() => _AuthorProfileState();
}

class _AuthorProfileState extends State<AuthorProfile> {
  String value1 = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              ExtendedNavigator.root.pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: ColorsCustom.steel_grey,
            ),
          ),
          centerTitle: true,
          title: Text("Mehmet Güleryüz",
              style: TextStyles.textStyle12, textAlign: TextAlign.center),
        ),
        body: Container(
           // decoration: boxShadowDecoration,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 1.5 * 2,
                    vertical: SizeConfig.heightMultiplier * 1.5 * 2),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
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
                            width: SizeConfig.widthMultiplier * 1.5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              // Mehmet Güleryüz
                              Text("Selim Turan (1915-1994)",
                                  style: TextStyles.textStyle30),
                              // 1938
                              //Text("1938", style: TextStyles.textStyle7)
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1.5 * 2,
                      ),
                      ChoiceChipCustom(
                        radioButtonValue: (value) {
                          setState(() {
                            //value = value;

                            value1 = (value);
                          });
                        },
                        enableShape: true,
                        buttonColor: Theme.of(context).canvasColor,
                        inactive: TextStyles.textStyle27,
                        active: TextStyles.textStyle15,
                        buttonLables: [
                          "Genel Bilgi",
                          //General Information
                          "Müzayede Sonuçları",
                          //Auction Results

                          ///todo add bubble counter inside the chip for auction I won
                        ],
                        buttonValues: [
                          "1",
                          "2",
                        ],
                        selectedColor: Colors.transparent,
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1.5 * 2,
                      ),
                      (value1 == '1') ? GeneralInformation() : AuctionResults()
                    ]),
              ),
            )));
  }
}

class GeneralInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
        '''Çizgilerin, Güleryüz’ün sanatına özgü akıcı uyumu, alt yapıdaki renk üzerinde yer yer derine kaçan ve üç boyutluluk etkisini öne çıkaran yer yer de bezek (ornament) etkisine çağrışım yapan görüntüsü, resminin ilgi çekici karakteridir.İzleyiciyi şaşırtarak sürprizler karşısında bırakmak yerine, onu düşünerek şaşırtmaktan yana olmuştur Mehmet Güleryüz. Böyle bir öncelik-sonralık yöntemi, yenilikçi sanatın çok sık kullandığı bir yol değil. İzleyici genellikle duyumlarına yansıyan görüntünün zihinse.

          Çizgilerin, Güleryüz’ün sanatına özgü akıcı uyumu, alt yapıdaki renk üzerinde yer yer derine kaçan ve üç boyutluluk etkisini öne çıkaran yer yer de bezek (ornament) etkisine çağrışım yapan görüntüsü, resminin ilgi çekici karakteridir.İzleyiciyi şaşırtarak sürprizler karşısında bırakmak yerine, onu düşünerek şaşırtmaktan yana olmuştur Mehmet Güleryüz. Böyle bir öncelik-sonralık yöntemi, yenilikçi sanatın çok sık kullandığı bir yol değil. İzleyici genellikle duyumlarına yansıyan görüntünün zihinse...

    Çizgilerin, Güleryüz’ün sanatına özgü akıcı uyumu, alt yapıdaki renk üzerinde yer yer derine kaçan ve üç boyutluluk etkisini öne çıkaran yer yer de bezek (ornament) etkisine çağrışım yapan görüntüsü, resminin ilgi çekici karakteridir.İzleyiciyi şaşırtarak sürprizler karşısında bırakmak yerine, onu düşünerek şaşırtmaktan yana olmuştur Mehmet Güleryüz. Böyle bir öncelik-sonralık yöntemi, yenilikçi sanatın çok sık kullandığı bir yol değil. İzleyici genellikle duyumlarına yansıyan görüntünün zihinse...

    Çizgilerin, Güleryüz’ün sanatına özgü akıcı uyumu, alt yapıdaki renk üzerinde yer yer derine kaçan ve üç boyutluluk etkisini öne çıkaran yer yer de bezek (ornament) etkisine çağrışım yapan görüntüsü, resminin ilgi çekici karakteridir.İzleyiciyi şaşırtarak sürprizler karşısında bırakmak yerine, onu düşünerek şaşırtmaktan yana olmuştur Mehmet Güleryüz. Böyle bir öncelik-sonralık yöntemi, yenilikçi sanatın çok sık kullandığı bir yol değil. İzleyici genellikle duyumlarına yansıyan görüntünün zihinse...

    Çizgilerin, Güleryüz’ün sanatına özgü akıcı uyumu, alt yapıdaki renk üzerinde yer yer derine kaçan ve üç boyutluluk etkisini öne çıkaran yer yer de bezek (ornament) etkisine çağrışım yapan görüntüsü, resminin ilgi çekici karakteridir.İzleyiciyi şaşırtarak sürprizler karşısında bırakmak yerine, onu düşünerek şaşırtmaktan yana olmuştur Mehmet Güleryüz. Böyle bir öncelik-sonralık yöntemi, yenilikçi sanatın çok sık kullandığı bir yol değil. İzleyici genellikle duyumlarına yansıyan görüntünün zihinse...''',
        style: TextStyles.textStyle24);
  }
}

class AuctionResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: AuctionResultResponsive());
  }
}



