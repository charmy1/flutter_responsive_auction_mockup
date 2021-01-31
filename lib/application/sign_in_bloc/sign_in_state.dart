part of 'sign_in_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @required String emailAddress,
    @required String password,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Either<Failure, Unit> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        emailAddress: '',
        password: '',
        showErrorMessages: false,//true after ant button pressed
        isSubmitting: false,
        authFailureOrSuccessOption: Right(unit),
      );
}
