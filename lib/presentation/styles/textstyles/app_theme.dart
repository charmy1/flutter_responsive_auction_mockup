import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';

//todo
class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    textTheme: lightTextTheme,
  );

  static final TextTheme lightTextTheme = TextTheme(
    //Text themes will change as for login same theme is used as for cozumcupu
    button: TextStyle(
      fontSize: 18,
      color: ColorsCustom.gunmetal,
    ),
    headline6: TextStyle(
      color: ColorsCustom.gunmetal,
      fontSize: 30,
      height: 1.13,
    ),
    //flat button//appbar//onbairding titles
    headline5: TextStyle(
        fontSize: 18,
        color: ColorsCustom.gunmetal,
        wordSpacing: .4,
        height: 1.56),
    //onboarding subtitle
    headline4: TextStyle(
      fontSize: 16,
      color: ColorsCustom.gunmetal,
      letterSpacing: .3,
      height: 1.75,
    ),

    bodyText1: TextStyle(color: ColorsCustom.gunmetal, fontSize: 16),
    /* subtitle2: TextStyle(
                  color: Colors.black, fontSize: 16),*/
    bodyText2: TextStyle(color: Colors.black, fontSize: 13), //for form display
  );
}
