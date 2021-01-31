import 'package:flutter_app_responsive_auction_mockup/core/utils/failure_messages.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/validator_extensions.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_app_responsive_auction_mockup/application/sign_in_bloc/sign_in_bloc.dart';
import 'package:flutter_app_responsive_auction_mockup/application/sign_up_bloc/sign_up_bloc.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/const.dart';

//import 'package:flutter_app_responsive_auction_mockup/presentation/pages/signup_signin/widgets/custom_date_picker.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/CustomFlatButton.dart';
import 'package:flutter_app_responsive_auction_mockup/presentation/widgets/core/custom_checkbox.dart';
import 'package:flutter_app_responsive_auction_mockup/router/router1.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sized_context/sized_context.dart';

//import 'custom_drop_down.dart';

class SignUpWidget extends StatefulWidget {
  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: BlocConsumer<SignUpBloc, SignUpFormState>(
            listener: (context, state) {
              state.authFailureOrSuccessOption.fold((failure) {
                /* final snackBar = SnackBar(
                    content: Text(FailureMessages().mapFailureToMessage(failure)));
                Scaffold.of(context).showSnackBar(snackBar);*/
              }, (_) {
                ExtendedNavigator.of(context).push(Routes.bottomNavPage);
              });
            },
            builder: (context, state) {
              return Form(
                autovalidate: state.showErrorMessages,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SvgPicture.asset(
                        "assets/images/svg/register1.svg",
                        width: 140,
                        height: 140,
                      ),
                    ),
                    SizedBox(
                      height: context.heightPx * 12 / 100,
                    ),
                    TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      decoration: inputDecorationFilled.copyWith(
                        hintText: 'Adı',
                        prefixText: '**',
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .bloc<SignUpBloc>()
                          .add(SignUpFormEvent.nameChanged(value)),
                      validator: (_) => context
                          .bloc<SignUpBloc>()
                          .state
                          .name
                          .validateNotNull
                          .fold(
                            (failure) =>
                                FailureMessages().mapFailureToMessage(failure),
                            (r) => null,
                          ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      decoration: inputDecorationFilled.copyWith(
                        hintText: 'Soyadı',
                        prefixText: '**',
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .bloc<SignUpBloc>()
                          .add(SignUpFormEvent.surnameChanged(value)),
                      validator: (_) => context
                          .bloc<SignUpBloc>()
                          .state
                          .surname
                          .validateNotNull
                          .fold(
                            (failure) =>
                                FailureMessages().mapFailureToMessage(failure),
                            (r) => null,
                          ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    /*CustomDropDown(
                      list: ["Doğum Tarihi", "b", "c"],
                    ),*/
                    /*     CustomDatePicker(
                      */ /*onChanged: (value) => context
                          .bloc<SignUpBloc>()
                          .add(SignUpFormEvent.dobChanged(value)),*/ /*
                      validator: (_) => context
                          .bloc<SignUpBloc>()
                          .state
                          .dob
                          .validateNotNull
                          .fold(
                            (failure) =>
                            FailureMessages().mapFailureToMessage(failure),
                            (r) => null,
                      ),


                    ),*/
                    SizedBox(
                      height: 20,
                    ),
                    /* Row(
                      children: <Widget>[
                        Expanded(
                          child: CustomDropDown(
                            list: ["Mezun", "12.Sınıf"],
                          ), //Mezun/12.Sınıf
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Expanded(
                          child: CustomDropDown(
                            list: ["Alan", "b", "c"],
                          ),
                        ),
                      ],
                    ),*/
                 /*   SizedBox(
                      height: 20,
                    ),*/
                    TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      decoration: inputDecorationFilled.copyWith(
                        hintText: 'Telefon Numarası',
                        prefixText: '**',
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .bloc<SignUpBloc>()
                          .add(SignUpFormEvent.phoneChanged(value)),
                      validator: (_) => context
                          .bloc<SignUpBloc>()
                          .state
                          .phone
                          .validateNotNull
                          .fold(
                            (failure) =>
                                FailureMessages().mapFailureToMessage(failure),
                            (r) => null,
                          ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      decoration: inputDecorationFilled.copyWith(
                        hintText: 'Mail Adresi',
                        prefixText: '**',
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .bloc<SignUpBloc>()
                          .add(SignUpFormEvent.emailChanged(value)),
                      validator: (_) => context
                          .bloc<SignUpBloc>()
                          .state
                          .email
                          .validateEmailAddress
                          .fold(
                            (failure) =>
                                FailureMessages().mapFailureToMessage(failure),
                            (r) => null,
                          ),
                    ),
                  /*  SizedBox(
                      height: 20,
                    ),*/
                    /* Row(
                      children: <Widget>[
                        Expanded(
                          child: CustomDropDown(
                            list: ["İl", "b", "c"],
                          ), //Me,
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Expanded(
                          child: CustomDropDown(
                            list: ["İlçe", "b", "c"],
                          ), //Me,
                        ),
                      ],
                    ),*/
                  /*  SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      decoration: inputDecorationFilled.copyWith(
                        hintText: 'Okul',
                        prefixText: '**',
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .bloc<SignUpBloc>()
                          .add(SignUpFormEvent.schoolChanged(value)),
                      validator: (_) => context
                          .bloc<SignUpBloc>()
                          .state
                          .school
                          .validateNotNull
                          .fold(
                            (failure) =>
                                FailureMessages().mapFailureToMessage(failure),
                            (r) => null,
                          ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      decoration: inputDecorationFilled.copyWith(
                        hintText: "Kurum / Dershane",
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        style: Theme.of(context).textTheme.bodyText1,
                        decoration: inputDecorationFilled.copyWith(
                          hintText: "Twitter Kullanıcı Adı",
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      decoration: inputDecorationFilled.copyWith(
                        hintText: "Instagram Kullanıcı Adı",
                      ),
                    ),*/
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      decoration: inputDecorationFilled.copyWith(
                        hintText: 'Şifre',
                        prefixText: '**',
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .bloc<SignUpBloc>()
                          .add(SignUpFormEvent.passwordChanged(value)),
                      validator: (_) => context
                          .bloc<SignUpBloc>()
                          .state
                          .password
                          .validateNotNullPassword(state.passwordAgain)
                          .fold(
                            (failure) =>
                                FailureMessages().mapFailureToMessage(failure),
                            (r) => null,
                          ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      style: Theme.of(context).textTheme.bodyText1,
                      decoration: inputDecorationFilled.copyWith(
                        hintText: 'Şifre Tekrar',
                        prefixText: '**',
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .bloc<SignUpBloc>()
                          .add(SignUpFormEvent.passwordAgainChanged(value)),
                      validator: (_) => context
                          .bloc<SignUpBloc>()
                          .state
                          .passwordAgain
                          .validateNotNullPassword(state.password)
                          .fold(
                            (failure) =>
                                FailureMessages().mapFailureToMessage(failure),
                            (r) => null,
                          ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CustomCheckBox(),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: RichText(
                              maxLines: 2,
                              text: TextSpan(
                                /*defining default style is optional */
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Gizliklik Sözleşmesi',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .copyWith(color: ColorsCustom.gunmetal),
                                  ),
                                  TextSpan(
                                    text: ' ve',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                  TextSpan(
                                    text: ' Kullanıcı Sözleşmesi',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .copyWith(color: ColorsCustom.gunmetal),
                                  ),
                                  TextSpan(
                                    text: ' ’ni Kabul Ediyorum',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Theme(
                        data: ThemeData(
                          unselectedWidgetColor: Colors.transparent,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Colors.transparent),
                            ),
                            disabledBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                  width: 1, color: Colors.transparent),
                            ),
                            enabledBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.all(Radius.circular(4)),
                              borderSide: BorderSide(
                                  width: 1, color: Colors.transparent),
                            ),
                          ),
                          style: TextStyle(fontSize: 3),
                          validator: (_) => context
                              .bloc<SignUpBloc>()
                              .state
                              .checkBox
                              .validateCheckBox
                              .fold(
                                (failure) => FailureMessages()
                                    .mapFailureToMessage(failure),
                                (r) => null,
                              ),
                        ),
                      ),
                    ),
                    /* Theme(
                      data: ThemeData(unselectedWidgetColor: Colors.transparent),
                      child: CheckboxFormField(
                        context: context,
                        validator: (_) => context
                            .bloc<SignUpBloc>()
                            .state
                            .checkBox
                            .validateCheckBox
                            .fold(
                              (failure) =>
                              FailureMessages().mapFailureToMessage(failure),
                              (r) => null,
                        ),
                        onSaved: (value){
                          setState(() {
                            value = !value;

                            context
                                .bloc<SignUpBloc>()
                                .add(SignUpFormEvent.checkboxChanged(value));
                          });
                        },

                      ),
                    ),*/
                    /* SizedBox(
                      height: 20,
                    ),*/
                    CustomFlatButton(
                      onPressed: () {
                        // ExtendedNavigator.ofRouter<Router>().pushNamed(Routes.codeConfirmationPage);

                        context.bloc<SignUpBloc>().add(const SignUpFormEvent
                            .registerWithEmailAndPasswordPressed());
                      },
                      name: "Kayıt Ol",
                    )
                  ],
                ),
              );
            },
          )),
    );
  }
}
