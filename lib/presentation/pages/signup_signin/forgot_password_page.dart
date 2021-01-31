import 'package:auto_route/auto_route.dart';
import 'package:flutter_app_responsive_auction_mockup/application/sign_in_bloc/sign_in_bloc.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/failure_messages.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/validator_extensions.dart';

import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sized_context/sized_context.dart';

import '../../../injection.dart';

class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[

        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Text("Şifre Gönder", style: Theme.of(context).textTheme.headline6),
            centerTitle: true,
          ),
          body: BlocProvider(
            create: (context) => getIt<SignInFormBloc>(),
            child: ForgotPasswordWidget(),
          ),
        ),
      ],
    );
  }
}

class ForgotPasswordWidget extends StatefulWidget {
  @override
  _ForgotPasswordWidgetState createState() => _ForgotPasswordWidgetState();
}

class _ForgotPasswordWidgetState extends State<ForgotPasswordWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    bool _keyboardIsVisible() {
      return !(MediaQuery.of(context).viewInsets.bottom == 0.0);
      // AssetImage(), fit: BoxFit.cover)
    }

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: BlocConsumer<SignInFormBloc, SignInFormState>(
            listener: (context, state) {
          state.authFailureOrSuccessOption.fold((failure) {
            final snackBar = SnackBar(
                content: Text(FailureMessages().mapFailureToMessage(failure)));
            Scaffold.of(context).showSnackBar(snackBar);
          }, (_) {
            //Navigator.push(
            //                  context,
            //                  MaterialPageRoute(
            //                      builder: (context) => PlaceholderUsersPage()),
            //                )
          });
        }, builder: (context, state) {
          return Form(
            autovalidate: state.showErrorMessages,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: context.heightPx * 12 / 100,
                ),
                TextFormField(
                  style: Theme.of(context).textTheme.bodyText1,
                  decoration: inputDecorationUnderLine.copyWith(
                    hintText: "E-Mail Address",
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        height: 2,
                        width: 2,
                        child: SvgPicture.asset(
                          "assets/images/svg/user.svg",
                        ),
                      ),
                    ),
                  ),
                  autocorrect: false,
                  onChanged: (value) => context
                      .bloc<SignInFormBloc>()
                      .add(SignInFormEvent.emailChanged(value)),
                  validator: (_) => context
                      .bloc<SignInFormBloc>()
                      .state
                      .emailAddress
                      .validateEmailAddressPassword
                      .fold(
                        (failure) =>
                            FailureMessages().mapFailureToMessage(failure),
                        (r) => null,
                      ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomFlatButton(
                  onPressed: () {
                    context.bloc<SignInFormBloc>().add(const SignInFormEvent
                        .signInWithEmailAndPasswordPressed());
                  },
                  name: "Şifre Gönder",
                ),
                SizedBox(
                  height: 20,
                ),

              ],
            ),
          );
        }),
      ),
    );
  }
}
