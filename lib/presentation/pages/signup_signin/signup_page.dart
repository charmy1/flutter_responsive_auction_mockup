import 'package:flutter_app_responsive_auction_mockup/application/sign_up_bloc/sign_up_bloc.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';

import 'package:flutter_app_responsive_auction_mockup/presentation/pages/signup_signin/widgets/signup_widget.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';

class SignUp extends StatelessWidget {
  SignUp({Key key, this.title}) : super(key: key);

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
        ),*/
        Scaffold(
          backgroundColor: ColorsCustom.bg,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title:
                Text("Kayıt Ol", style: Theme.of(context).textTheme.headline6),
            centerTitle: true,
          ),
          body: BlocProvider(
            create: (context) => getIt<SignUpBloc>(),
            child: SignUpWidget(),
          ),
        ),
      ],
    );
  }
}
