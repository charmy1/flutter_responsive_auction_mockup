import 'package:auto_route/auto_route.dart';
import 'package:flutter_app_responsive_auction_mockup/application/sign_in_bloc/sign_in_bloc.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/failure_messages.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter_app_responsive_auction_mockup/router/router1.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sized_context/sized_context.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/validator_extensions.dart';

import 'package:keyboard_visibility/keyboard_visibility.dart';

//Sign In Form For Validation
class SignInWidget extends StatefulWidget {
  @override
  _SignInWidgetState createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  bool _obscureText = true;
  bool isKeyBoardVisible = false;

  @override
  void initState() {

    super.initState();
    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visible) {

        isKeyBoardVisible = visible;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
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
                !isKeyBoardVisible
                    ? Center(
                        child: SvgPicture.asset(
                          "assets/images/svg/logo_email.svg",
                          width: 140,
                          height: 140,
                        ),
                      )
                    : Container(
                        height: 0,
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
                      .validateEmailAddress
                      .fold(
                        (failure) =>
                            FailureMessages().mapFailureToMessage(failure),
                        (r) => null,
                      ),
                ),
                TextFormField(
                  style: Theme.of(context).textTheme.bodyText1,
                  obscureText: _obscureText,
                  decoration: inputDecorationUnderLine.copyWith(
                    hintText: "Şifre",
                    suffixIcon: (_obscureText)
                        ? GestureDetector(
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Container(
                                height: 2,
                                width: 2,
                                child: SvgPicture.asset(
                                  "assets/images/svg/eye.svg",
                                ),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _obscureText = false;
                              });
                            },
                          )
                        : GestureDetector(
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Container(
                                height: 2,
                                width: 2,
                                child: SvgPicture.asset(
                                  "assets/images/svg/eye.svg",
                                ),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _obscureText = true;
                              });
                            },
                          ),
                  ),
                  onChanged: (value) => context
                      .bloc<SignInFormBloc>()
                      .add(SignInFormEvent.passwordChanged(value)),
                  validator: (_) => context
                      .bloc<SignInFormBloc>()
                      .state
                      .password
                      .validatePassword
                      .fold(
                        (failure) =>
                            FailureMessages().mapFailureToMessage(failure),
                        (r) => null,
                      ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    ExtendedNavigator.of(context)
                        .push(Routes.forgotPasswordPage);
                  },
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Şifreni unuttunmu?",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white, fontFamily: "hn", fontSize: 13),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomFlatButton(
                  onPressed: () {
                    context.bloc<SignInFormBloc>().add(const SignInFormEvent
                        .signInWithEmailAndPasswordPressed());
                  },
                  name: "Giriş",
                ),
                SizedBox(
                  height: 20,
                ),
                CustomFlatButtonTransparent(
                  color: Colors.white,
                  onPressed: () {
                    ExtendedNavigator.of(context).push(Routes.signUp);
                  },
                  name: "Kayıt Ol",
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
