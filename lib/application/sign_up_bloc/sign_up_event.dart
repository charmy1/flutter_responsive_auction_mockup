part of 'sign_up_bloc.dart';

@freezed
abstract class SignUpFormEvent with _$SignUpFormEvent {
  const factory SignUpFormEvent.nameChanged(String name) = NameChanged;

  const factory SignUpFormEvent.surnameChanged(String surname) = SurnameChanged;

  const factory SignUpFormEvent.dobChanged(String dob) = DobChanged;

  const factory SignUpFormEvent.phoneChanged(String phone) = PhoneChanged;

  const factory SignUpFormEvent.emailChanged(String email) = EmailChanged;

  const factory SignUpFormEvent.schoolChanged(String school) = SchoolChanged;

 // const factory SignUpFormEvent.secondarySchoolChanged(String secondarySchool) =
   //   SecondarySchoolChanged;

  const factory SignUpFormEvent.passwordChanged(String password) =
      PasswordChanged;

  const factory SignUpFormEvent.passwordAgainChanged(String passwordAgain) =
      PasswordAgainChanged;
  const factory SignUpFormEvent.checkboxChanged(bool checkBox) =
  CheckboxChanged;
const factory SignUpFormEvent.registerWithEmailAndPasswordPressed() =
  RegisterWithEmailAndPasswordPressed;
/* const factory SignUpFormEvent.signUpWithEmailAndPasswordPressed() =
  SignUpWithEmailAndPasswordPressed;*/

}
