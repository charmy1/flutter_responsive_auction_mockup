import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sized_context/sized_context.dart';
import 'package:sized_context/sized_context.dart';

class Expertise extends StatelessWidget {
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
          title: Text("Ekspertiz",
              style: TextStyles.textStyle12, textAlign: TextAlign.center),
        ),
        body: SingleChildScrollView(
          child: Container(
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
                          child: Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[


                                Container(
                                    color: Colors.grey,
                                    width: context.widthPx,
                                    child: Image.asset(
                                        "assets/static/expert.jpg",
                                        fit: BoxFit.fill),
                                    height: context.heightPct(.4)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: context.heightPct(.025),
                        ),
                        EachRow(
                          widget: // Eserinizin bir fotoğ
                              RichText(
                                  text: TextSpan(children: [
                            TextSpan(
                                style: TextStyles.textStyle48,
                                text:
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. "),
                            TextSpan(
                                style: TextStyles.textStyle33,
                                text: "test@g.com "),
                            TextSpan(
                                style: TextStyles.textStyle48,
                                text:
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. ")
                          ])),
                          title: "E-posta",
                          icon: "assets/images/svg/mail.svg",
                        ),
                        EachRow(
                          widget: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                style: TextStyles.textStyle33,
                                text: "0000000000000000 "),
                            TextSpan(
                                style: TextStyles.textStyle48,
                                text:
                                    "no.")
                          ])),
                          title: "Telefon",
                          icon: "assets/images/svg/phone.svg",
                        ),
                        EachRow(
                          widget: // Eserinizin bir fotoğ
                              // Elinizdeki eseri Maç
                              Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. ",
                                  style: TextStyles.textStyle48),
                          title: " title",
                          icon: "assets/images/svg/building.svg",
                        ),
                        EachRow(
                          widget: // Eserinizin bir fotoğ
                              RichText(
                                  text: TextSpan(children: [
                            TextSpan(
                                style: TextStyles.textStyle48,
                                text:
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. "),
                            TextSpan(
                                style: TextStyles.textStyle33,
                                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. "),
                            TextSpan(
                                style: TextStyles.textStyle48,
                                text:
                                    "whats app")
                          ])),
                          title: "Whatsapp Hattı",
                          icon: "assets/images/svg/whatsapp.svg",
                        ),
                        Card(
                          color: ColorsCustom.silver,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Sıkça Sorulan Sorula
                              Text("Sıkça Sorulan Sorular",
                                  style: TextStyles.textStyle5),
                              Flexible(
                                child: new ListView.builder(
                                  shrinkWrap: true,
                                  primary: false,
                                  itemCount: 10,
                                  itemBuilder: (context, i) {
                                    return ListTileTheme(
                                      dense: true,
                                      selectedColor: ColorsCustom.velvet,
                                      child: new ExpansionTile(
                                        title: // Lorem ipsum dolor si
                                            Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis. ",
                                                style: TextStyles.textStyle24),
                                        children: <Widget>[
                                          // Lorem ipsum dolor si
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin sapien quis neque hendrerit feugiat. Sed rutrum velit sapien, eget faucibus erat euismod vehicula. Integer aliquet non orci eget facilisis.",
                                                style: const TextStyle(
                                                    color:
                                                        const Color(0xff7b7b7b),
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "SFProDisplay",
                                                    fontStyle: FontStyle.normal,
                                                    fontSize: 11.0)),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        )
                      ]))),
        ));
  }
}

class EachRow extends StatelessWidget {
  final String icon;
  final String title;
  final String description;
  final Widget widget;

  const EachRow({Key key, this.icon, this.title, this.description, this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  icon,
                ),
                SizedBox(
                  width: context.widthPct(.025),
                ),
                Text(title, style: TextStyles.textStyle14),
              ],
            ),

            SizedBox(
              height: context.heightPct(.025),
            ),
            // 0 212 236 24 60 no'l
            widget,
          ],
        ),
      ),
    );
  }
}
