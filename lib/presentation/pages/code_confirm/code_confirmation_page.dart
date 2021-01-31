
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/signup_signin/widgets/countdown_timer.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:sized_context/sized_context.dart';
import '../../../injection.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';

import 'package:flutter_app_responsive_auction_mockup/router/router1.gr.dart';
import 'package:auto_route/auto_route.dart';

class CodeConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        /*Image.asset(
          "assets/images/bluebg/bg.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),*/
        Scaffold(
          backgroundColor: ColorsCustom.bg,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Text(
              "SMS Code",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,

                height: 1.13,
              ),
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CodeConfirmationWidget(),
          ),
        ),
      ],
    );
  }
}

class CodeConfirmationWidget extends StatefulWidget {
  @override
  _CodeConfirmationWidgetState createState() => _CodeConfirmationWidgetState();
}

class _CodeConfirmationWidgetState extends State<CodeConfirmationWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        PinFieldAutoFill(
          decoration: BoxLooseDecoration(
            // strokeColor: Colors.white,

              radius: Radius.circular(8.0),
              //strokeColor: Colors.white,
              strokeWidth: 3,
              //solidColor: Colors.white,
              textStyle: TextStyle(fontSize: 20, color: ColorsCustom.gunmetal)),
          codeLength: 4,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "+905070056239",
          style: TextStyle(
            fontFamily: "abel",
            fontSize: 18,
            color: Colors.white,
            letterSpacing: .2,
            height: 1.75,
          ),
        ),
        SizedBox(height: 5),
        CustomFlatButton(
          onPressed: () {
            ExtendedNavigator.of(context)
                .push(Routes.bottomNavPage);
          },
          name: "Kod Doğrula",
        ),
        SizedBox(height: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Doğrulama kodunu SMS olarak almadınmı?",
              style: TextStyle(
                fontFamily: "abel",
                fontSize: 15,
                color: Colors.white,
                letterSpacing: .3,
                height: 1.3,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Kodu Tekrar Gönder ",
                  style: TextStyle(
                    fontFamily: "abel",
                    fontSize: 18,
                    color: Colors.white,
                    letterSpacing: .3,
                    height: 1.55,
                  ),
                ),
                CountDownTimer(

                  countDownTimerStyle: TextStyle(
                    fontFamily: "abel",
                    fontSize: 18,
                    color: Colors.white,
                    letterSpacing: .3,
                    height: 1.55,
                  ),
                  secondsRemaining: 120,
                  whenTimeExpires: () {
                    setState(() {
                      //hasTimerStopped = true;
                      SmsAutoFill().unregisterListener();
                    });
                  },
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
