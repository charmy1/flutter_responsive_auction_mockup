import 'package:auto_route/auto_route.dart';
import 'package:flutter_app_responsive_auction_mockup/application/sign_in_bloc/sign_in_bloc.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/pages/signup_signin/widgets/signin_widget.dart';
import 'package:flutter_app_responsive_auction_mockup/router/router1.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sized_context/sized_context.dart';
import 'dart:ui';
import '../../../injection.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        /*Image.asset(
          "assets/images/bluebg/bg.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        )*/
        Scaffold(
          backgroundColor: ColorsCustom.bg,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Text(
              "Giriş",
              style: Theme.of(context).textTheme.headline6
            ),
            centerTitle: true,
          ),
          body: BlocProvider(
            create: (context) => getIt<SignInFormBloc>(),
            child: SignInWidget(),
          ),
        ),
      ],
    );
  }
}
