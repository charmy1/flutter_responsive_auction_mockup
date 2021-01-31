import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_auction_mockup/router/router1.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/bottom_nav/bottom_nav_bloc.dart';
import 'core/utils/const.dart';
import 'injection.dart';

import 'package:injectable/injectable.dart';

import 'presentation/size_config.dart';

// 1.
//refactor styles, todo styles
//refactor strings
//refactor images

//Navigation details in HOme_Model
//flutter packages pub run build_runner watch
//flutter packages pub run build_runner build --delete-conflicting-outputs
//flutter packages pub run build_runner watch --delete-conflicting-outputs

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);

  runApp(BlocProvider(
      create: (context) => getIt<BottomNavBloc>(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              theme: ThemeData(
                // primaryColor: Colors.black,
                //  scaffoldBackgroundColor: ColorsCustom.white_two,
                buttonTheme:
                    ButtonThemeData(textTheme: ButtonTextTheme.primary),
                fontFamily: "opensans",
                textTheme: TextTheme(
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

                  //onboardsubtitle//skip button
                  bodyText1:
                      TextStyle(color: ColorsCustom.gunmetal, fontSize: 16),
                  /* subtitle2: TextStyle(
                  color: Colors.black, fontSize: 16),*/
                  bodyText2: TextStyle(
                      color: Colors.black, fontSize: 13), //for form display
                ),
                cursorColor: Colors.black,
                textSelectionHandleColor: Colors.black,
                backgroundColor: Colors.black,
                appBarTheme: AppBarTheme(),
              ),
              builder: ExtendedNavigator.builder<Router1>(
                router: Router1(),
                name: "rootNav",
              ),
            );
          },
        );
      },
    );
  }
}
//A	B	C	Ç	D	E	F	G	Ğ	H	I	İ	J	K	L	M	N	O	Ö	P	R	S	Ş	T	U	Ü	V	Y	Z
//a	b	c	ç	d	e	f	g	ğ	h	ı	i	j	k	l	m	n	o	ö	p	r	s	ş	t	u	ü	v	y	z

//'file:///D:/F
