import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/errors.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/validator_extensions.dart';
import 'package:flutter_app_responsive_auction_mockup/domain/auth/auth_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';


import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_event.dart';

part 'sign_in_state.dart';

part 'sign_in_bloc.freezed.dart';

typedef functionType = Future<Either<Failure, Unit>> Function({
  @required String emailAddress,
  @required String password,
});

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final AuthInterface _auth;

  SignInFormBloc(this._auth) : super(SignInFormState.initial());

 // SignInFormBloc(SignInFormState initialState, this._auth) ;


//  @override
//  SignInFormState get initialState => SignInFormState.initial();

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: e.emailStr,
          authFailureOrSuccessOption: Right(unit),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: e.passwordStr,
          //authFailureOrSuccessOption: Right(unit),
        );
      },
      registerWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _auth.registerWithEmailAndPassword,
        );
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _auth.signInWithEmailAndPassword,
        );
      },

    );
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    functionType registerOrSignInFunction,
  ) async* {
    Either<Failure, Unit> failureOrSuccess;

    final isEmailValid =
        (state.emailAddress.validateEmailAddress.isRight()) ? true : false;
    final isPasswordValid =
        (state.password.validatePassword.isRight()) ? true : false;

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
      );

      failureOrSuccess = await registerOrSignInFunction(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    } else {
      failureOrSuccess = Right(unit);
      //add yield
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption:
          failureOrSuccess, //as no implementation for login register //else failureOrSuccess
    );
  }
}
