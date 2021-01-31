part of 'sign_up_bloc.dart';



//import 'package:flutter/cupertino.dart';

@freezed
abstract class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    @required String name,
    @required String surname,
    @required String dob,
    @required String phone,
    @required String email,
    @required String school,
   // @required String secondarySchool,
    @required String password,
    @required String passwordAgain,
    @required bool checkBox,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Either<Failure, Unit> authFailureOrSuccessOption,
  }) = _SignUpFormState;

  factory SignUpFormState.initial() => SignUpFormState(
    name: '',
    surname: '',
    dob: '',
    phone: '',
    email: '',
    school: '',
   // secondarySchool: '',
    password: '',
    passwordAgain: '',
    checkBox: false,
    showErrorMessages: false,//true after ant button pressed
    isSubmitting: false,
    authFailureOrSuccessOption: Right(unit),
  );
}
