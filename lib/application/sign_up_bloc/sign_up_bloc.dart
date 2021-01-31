import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/validator_extensions.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

part 'sign_up_event.dart';

part 'sign_up_state.dart';

part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  SignUpBloc() : super(SignUpFormState.initial());


//
//  @override
//  SignUpFormState get initialState => SignUpFormState.initial();

  @override
  Stream<SignUpFormState> mapEventToState(
    SignUpFormEvent event,
  ) async* {
    yield* event.map(
      nameChanged: (e) async* {
        yield state.copyWith(
          name: e.name,
          authFailureOrSuccessOption: Left(ServerFailure()),
          //  authFailureOrSuccessOption: Right(unit),
        );
      },
      surnameChanged: (e) async* {
        yield state.copyWith(
          surname: e.surname,
          authFailureOrSuccessOption: Left(ServerFailure()),
          // authFailureOrSuccessOption: Right(unit),
        );
      },
      dobChanged: (e) async* {
        yield state.copyWith(
          dob: e.dob,
          authFailureOrSuccessOption: Left(ServerFailure()),
          //  authFailureOrSuccessOption: Right(unit),
        );
      },
      phoneChanged: (e) async* {
        yield state.copyWith(
          phone: e.phone,
          authFailureOrSuccessOption: Left(ServerFailure()),
          //  authFailureOrSuccessOption: Right(unit),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          email: e.email,
          authFailureOrSuccessOption: Left(ServerFailure()),
          // authFailureOrSuccessOption: Right(unit),
        );
      },
      schoolChanged: (e) async* {
        yield state.copyWith(
          school: e.school,
          authFailureOrSuccessOption: Left(ServerFailure()),
          //  authFailureOrSuccessOption: Right(unit),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: e.password,
          authFailureOrSuccessOption: Left(ServerFailure()),
          // authFailureOrSuccessOption: Right(unit),
        );
      },
      passwordAgainChanged: (e) async* {
        yield state.copyWith(
          passwordAgain: e.passwordAgain,
          // authFailureOrSuccessOption: Right(unit),
          authFailureOrSuccessOption: Left(ServerFailure()),
        );
      },
      checkboxChanged: (e) async* {
        yield state.copyWith(
          checkBox: e.checkBox,
          // authFailureOrSuccessOption: Right(unit),
          authFailureOrSuccessOption: Left(ServerFailure()),
        );
      },
      registerWithEmailAndPasswordPressed: (e) async* {
        if (state.name.validateNotNull.isRight() &&
            state.surname.validateNotNull.isRight() &&
            // state.phone.validateNotNull.isRight() &&
            state.email.validateEmailAddress.isRight() &&
            // state.school.validateNotNull.isRight() &&
            state.checkBox.validateCheckBox.isRight() &&
            state.password
                .validateNotNullPassword(state.passwordAgain)
                .isRight()) {
          yield state.copyWith(
            authFailureOrSuccessOption: Right(unit),
          );
        } else {
          yield state.copyWith(
            showErrorMessages: true,
            //authFailureOrSuccessOption: Left(ServerFailure()),
//TODO CHANGED to surpass validation
            authFailureOrSuccessOption: Right(unit),
          );
        }
        /* yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _auth.registerWithEmailAndPassword,
        );*/
      },
    );
  }
}
