// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignUpFormEventTearOff {
  const _$SignUpFormEventTearOff();

// ignore: unused_element
  NameChanged nameChanged(String name) {
    return NameChanged(
      name,
    );
  }

// ignore: unused_element
  SurnameChanged surnameChanged(String surname) {
    return SurnameChanged(
      surname,
    );
  }

// ignore: unused_element
  DobChanged dobChanged(String dob) {
    return DobChanged(
      dob,
    );
  }

// ignore: unused_element
  PhoneChanged phoneChanged(String phone) {
    return PhoneChanged(
      phone,
    );
  }

// ignore: unused_element
  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

// ignore: unused_element
  SchoolChanged schoolChanged(String school) {
    return SchoolChanged(
      school,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

// ignore: unused_element
  PasswordAgainChanged passwordAgainChanged(String passwordAgain) {
    return PasswordAgainChanged(
      passwordAgain,
    );
  }

// ignore: unused_element
  CheckboxChanged checkboxChanged(bool checkBox) {
    return CheckboxChanged(
      checkBox,
    );
  }

// ignore: unused_element
  RegisterWithEmailAndPasswordPressed registerWithEmailAndPasswordPressed() {
    return const RegisterWithEmailAndPasswordPressed();
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpFormEvent = _$SignUpFormEventTearOff();

/// @nodoc
mixin _$SignUpFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult surnameChanged(String surname),
    @required TResult dobChanged(String dob),
    @required TResult phoneChanged(String phone),
    @required TResult emailChanged(String email),
    @required TResult schoolChanged(String school),
    @required TResult passwordChanged(String password),
    @required TResult passwordAgainChanged(String passwordAgain),
    @required TResult checkboxChanged(bool checkBox),
    @required TResult registerWithEmailAndPasswordPressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult surnameChanged(String surname),
    TResult dobChanged(String dob),
    TResult phoneChanged(String phone),
    TResult emailChanged(String email),
    TResult schoolChanged(String school),
    TResult passwordChanged(String password),
    TResult passwordAgainChanged(String passwordAgain),
    TResult checkboxChanged(bool checkBox),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(NameChanged value),
    @required TResult surnameChanged(SurnameChanged value),
    @required TResult dobChanged(DobChanged value),
    @required TResult phoneChanged(PhoneChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult schoolChanged(SchoolChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult passwordAgainChanged(PasswordAgainChanged value),
    @required TResult checkboxChanged(CheckboxChanged value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(NameChanged value),
    TResult surnameChanged(SurnameChanged value),
    TResult dobChanged(DobChanged value),
    TResult phoneChanged(PhoneChanged value),
    TResult emailChanged(EmailChanged value),
    TResult schoolChanged(SchoolChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult passwordAgainChanged(PasswordAgainChanged value),
    TResult checkboxChanged(CheckboxChanged value),
    TResult registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignUpFormEventCopyWith<$Res> {
  factory $SignUpFormEventCopyWith(
          SignUpFormEvent value, $Res Function(SignUpFormEvent) then) =
      _$SignUpFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpFormEventCopyWithImpl<$Res>
    implements $SignUpFormEventCopyWith<$Res> {
  _$SignUpFormEventCopyWithImpl(this._value, this._then);

  final SignUpFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpFormEvent) _then;
}

/// @nodoc
abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$NameChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(NameChanged(
      name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$NameChanged with DiagnosticableTreeMixin implements NameChanged {
  const _$NameChanged(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.nameChanged(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormEvent.nameChanged'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult surnameChanged(String surname),
    @required TResult dobChanged(String dob),
    @required TResult phoneChanged(String phone),
    @required TResult emailChanged(String email),
    @required TResult schoolChanged(String school),
    @required TResult passwordChanged(String password),
    @required TResult passwordAgainChanged(String passwordAgain),
    @required TResult checkboxChanged(bool checkBox),
    @required TResult registerWithEmailAndPasswordPressed(),
  }) {
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(dobChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(schoolChanged != null);
    assert(passwordChanged != null);
    assert(passwordAgainChanged != null);
    assert(checkboxChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult surnameChanged(String surname),
    TResult dobChanged(String dob),
    TResult phoneChanged(String phone),
    TResult emailChanged(String email),
    TResult schoolChanged(String school),
    TResult passwordChanged(String password),
    TResult passwordAgainChanged(String passwordAgain),
    TResult checkboxChanged(bool checkBox),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(NameChanged value),
    @required TResult surnameChanged(SurnameChanged value),
    @required TResult dobChanged(DobChanged value),
    @required TResult phoneChanged(PhoneChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult schoolChanged(SchoolChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult passwordAgainChanged(PasswordAgainChanged value),
    @required TResult checkboxChanged(CheckboxChanged value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
  }) {
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(dobChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(schoolChanged != null);
    assert(passwordChanged != null);
    assert(passwordAgainChanged != null);
    assert(checkboxChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(NameChanged value),
    TResult surnameChanged(SurnameChanged value),
    TResult dobChanged(DobChanged value),
    TResult phoneChanged(PhoneChanged value),
    TResult emailChanged(EmailChanged value),
    TResult schoolChanged(SchoolChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult passwordAgainChanged(PasswordAgainChanged value),
    TResult checkboxChanged(CheckboxChanged value),
    TResult registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements SignUpFormEvent {
  const factory NameChanged(String name) = _$NameChanged;

  String get name;
  @JsonKey(ignore: true)
  $NameChangedCopyWith<NameChanged> get copyWith;
}

/// @nodoc
abstract class $SurnameChangedCopyWith<$Res> {
  factory $SurnameChangedCopyWith(
          SurnameChanged value, $Res Function(SurnameChanged) then) =
      _$SurnameChangedCopyWithImpl<$Res>;
  $Res call({String surname});
}

/// @nodoc
class _$SurnameChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $SurnameChangedCopyWith<$Res> {
  _$SurnameChangedCopyWithImpl(
      SurnameChanged _value, $Res Function(SurnameChanged) _then)
      : super(_value, (v) => _then(v as SurnameChanged));

  @override
  SurnameChanged get _value => super._value as SurnameChanged;

  @override
  $Res call({
    Object surname = freezed,
  }) {
    return _then(SurnameChanged(
      surname == freezed ? _value.surname : surname as String,
    ));
  }
}

/// @nodoc
class _$SurnameChanged with DiagnosticableTreeMixin implements SurnameChanged {
  const _$SurnameChanged(this.surname) : assert(surname != null);

  @override
  final String surname;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.surnameChanged(surname: $surname)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormEvent.surnameChanged'))
      ..add(DiagnosticsProperty('surname', surname));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SurnameChanged &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality().equals(other.surname, surname)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(surname);

  @JsonKey(ignore: true)
  @override
  $SurnameChangedCopyWith<SurnameChanged> get copyWith =>
      _$SurnameChangedCopyWithImpl<SurnameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult surnameChanged(String surname),
    @required TResult dobChanged(String dob),
    @required TResult phoneChanged(String phone),
    @required TResult emailChanged(String email),
    @required TResult schoolChanged(String school),
    @required TResult passwordChanged(String password),
    @required TResult passwordAgainChanged(String passwordAgain),
    @required TResult checkboxChanged(bool checkBox),
    @required TResult registerWithEmailAndPasswordPressed(),
  }) {
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(dobChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(schoolChanged != null);
    assert(passwordChanged != null);
    assert(passwordAgainChanged != null);
    assert(checkboxChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return surnameChanged(surname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult surnameChanged(String surname),
    TResult dobChanged(String dob),
    TResult phoneChanged(String phone),
    TResult emailChanged(String email),
    TResult schoolChanged(String school),
    TResult passwordChanged(String password),
    TResult passwordAgainChanged(String passwordAgain),
    TResult checkboxChanged(bool checkBox),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (surnameChanged != null) {
      return surnameChanged(surname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(NameChanged value),
    @required TResult surnameChanged(SurnameChanged value),
    @required TResult dobChanged(DobChanged value),
    @required TResult phoneChanged(PhoneChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult schoolChanged(SchoolChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult passwordAgainChanged(PasswordAgainChanged value),
    @required TResult checkboxChanged(CheckboxChanged value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
  }) {
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(dobChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(schoolChanged != null);
    assert(passwordChanged != null);
    assert(passwordAgainChanged != null);
    assert(checkboxChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return surnameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(NameChanged value),
    TResult surnameChanged(SurnameChanged value),
    TResult dobChanged(DobChanged value),
    TResult phoneChanged(PhoneChanged value),
    TResult emailChanged(EmailChanged value),
    TResult schoolChanged(SchoolChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult passwordAgainChanged(PasswordAgainChanged value),
    TResult checkboxChanged(CheckboxChanged value),
    TResult registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (surnameChanged != null) {
      return surnameChanged(this);
    }
    return orElse();
  }
}

abstract class SurnameChanged implements SignUpFormEvent {
  const factory SurnameChanged(String surname) = _$SurnameChanged;

  String get surname;
  @JsonKey(ignore: true)
  $SurnameChangedCopyWith<SurnameChanged> get copyWith;
}

/// @nodoc
abstract class $DobChangedCopyWith<$Res> {
  factory $DobChangedCopyWith(
          DobChanged value, $Res Function(DobChanged) then) =
      _$DobChangedCopyWithImpl<$Res>;
  $Res call({String dob});
}

/// @nodoc
class _$DobChangedCopyWithImpl<$Res> extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $DobChangedCopyWith<$Res> {
  _$DobChangedCopyWithImpl(DobChanged _value, $Res Function(DobChanged) _then)
      : super(_value, (v) => _then(v as DobChanged));

  @override
  DobChanged get _value => super._value as DobChanged;

  @override
  $Res call({
    Object dob = freezed,
  }) {
    return _then(DobChanged(
      dob == freezed ? _value.dob : dob as String,
    ));
  }
}

/// @nodoc
class _$DobChanged with DiagnosticableTreeMixin implements DobChanged {
  const _$DobChanged(this.dob) : assert(dob != null);

  @override
  final String dob;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.dobChanged(dob: $dob)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormEvent.dobChanged'))
      ..add(DiagnosticsProperty('dob', dob));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DobChanged &&
            (identical(other.dob, dob) ||
                const DeepCollectionEquality().equals(other.dob, dob)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dob);

  @JsonKey(ignore: true)
  @override
  $DobChangedCopyWith<DobChanged> get copyWith =>
      _$DobChangedCopyWithImpl<DobChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult surnameChanged(String surname),
    @required TResult dobChanged(String dob),
    @required TResult phoneChanged(String phone),
    @required TResult emailChanged(String email),
    @required TResult schoolChanged(String school),
    @required TResult passwordChanged(String password),
    @required TResult passwordAgainChanged(String passwordAgain),
    @required TResult checkboxChanged(bool checkBox),
    @required TResult registerWithEmailAndPasswordPressed(),
  }) {
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(dobChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(schoolChanged != null);
    assert(passwordChanged != null);
    assert(passwordAgainChanged != null);
    assert(checkboxChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return dobChanged(dob);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult surnameChanged(String surname),
    TResult dobChanged(String dob),
    TResult phoneChanged(String phone),
    TResult emailChanged(String email),
    TResult schoolChanged(String school),
    TResult passwordChanged(String password),
    TResult passwordAgainChanged(String passwordAgain),
    TResult checkboxChanged(bool checkBox),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dobChanged != null) {
      return dobChanged(dob);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(NameChanged value),
    @required TResult surnameChanged(SurnameChanged value),
    @required TResult dobChanged(DobChanged value),
    @required TResult phoneChanged(PhoneChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult schoolChanged(SchoolChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult passwordAgainChanged(PasswordAgainChanged value),
    @required TResult checkboxChanged(CheckboxChanged value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
  }) {
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(dobChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(schoolChanged != null);
    assert(passwordChanged != null);
    assert(passwordAgainChanged != null);
    assert(checkboxChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return dobChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(NameChanged value),
    TResult surnameChanged(SurnameChanged value),
    TResult dobChanged(DobChanged value),
    TResult phoneChanged(PhoneChanged value),
    TResult emailChanged(EmailChanged value),
    TResult schoolChanged(SchoolChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult passwordAgainChanged(PasswordAgainChanged value),
    TResult checkboxChanged(CheckboxChanged value),
    TResult registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dobChanged != null) {
      return dobChanged(this);
    }
    return orElse();
  }
}

abstract class DobChanged implements SignUpFormEvent {
  const factory DobChanged(String dob) = _$DobChanged;

  String get dob;
  @JsonKey(ignore: true)
  $DobChangedCopyWith<DobChanged> get copyWith;
}

/// @nodoc
abstract class $PhoneChangedCopyWith<$Res> {
  factory $PhoneChangedCopyWith(
          PhoneChanged value, $Res Function(PhoneChanged) then) =
      _$PhoneChangedCopyWithImpl<$Res>;
  $Res call({String phone});
}

/// @nodoc
class _$PhoneChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $PhoneChangedCopyWith<$Res> {
  _$PhoneChangedCopyWithImpl(
      PhoneChanged _value, $Res Function(PhoneChanged) _then)
      : super(_value, (v) => _then(v as PhoneChanged));

  @override
  PhoneChanged get _value => super._value as PhoneChanged;

  @override
  $Res call({
    Object phone = freezed,
  }) {
    return _then(PhoneChanged(
      phone == freezed ? _value.phone : phone as String,
    ));
  }
}

/// @nodoc
class _$PhoneChanged with DiagnosticableTreeMixin implements PhoneChanged {
  const _$PhoneChanged(this.phone) : assert(phone != null);

  @override
  final String phone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.phoneChanged(phone: $phone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormEvent.phoneChanged'))
      ..add(DiagnosticsProperty('phone', phone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneChanged &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  $PhoneChangedCopyWith<PhoneChanged> get copyWith =>
      _$PhoneChangedCopyWithImpl<PhoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult surnameChanged(String surname),
    @required TResult dobChanged(String dob),
    @required TResult phoneChanged(String phone),
    @required TResult emailChanged(String email),
    @required TResult schoolChanged(String school),
    @required TResult passwordChanged(String password),
    @required TResult passwordAgainChanged(String passwordAgain),
    @required TResult checkboxChanged(bool checkBox),
    @required TResult registerWithEmailAndPasswordPressed(),
  }) {
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(dobChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(schoolChanged != null);
    assert(passwordChanged != null);
    assert(passwordAgainChanged != null);
    assert(checkboxChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return phoneChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult surnameChanged(String surname),
    TResult dobChanged(String dob),
    TResult phoneChanged(String phone),
    TResult emailChanged(String email),
    TResult schoolChanged(String school),
    TResult passwordChanged(String password),
    TResult passwordAgainChanged(String passwordAgain),
    TResult checkboxChanged(bool checkBox),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneChanged != null) {
      return phoneChanged(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(NameChanged value),
    @required TResult surnameChanged(SurnameChanged value),
    @required TResult dobChanged(DobChanged value),
    @required TResult phoneChanged(PhoneChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult schoolChanged(SchoolChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult passwordAgainChanged(PasswordAgainChanged value),
    @required TResult checkboxChanged(CheckboxChanged value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
  }) {
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(dobChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(schoolChanged != null);
    assert(passwordChanged != null);
    assert(passwordAgainChanged != null);
    assert(checkboxChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(NameChanged value),
    TResult surnameChanged(SurnameChanged value),
    TResult dobChanged(DobChanged value),
    TResult phoneChanged(PhoneChanged value),
    TResult emailChanged(EmailChanged value),
    TResult schoolChanged(SchoolChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult passwordAgainChanged(PasswordAgainChanged value),
    TResult checkboxChanged(CheckboxChanged value),
    TResult registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneChanged implements SignUpFormEvent {
  const factory PhoneChanged(String phone) = _$PhoneChanged;

  String get phone;
  @JsonKey(ignore: true)
  $PhoneChangedCopyWith<PhoneChanged> get copyWith;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$EmailChanged with DiagnosticableTreeMixin implements EmailChanged {
  const _$EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.emailChanged(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormEvent.emailChanged'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult surnameChanged(String surname),
    @required TResult dobChanged(String dob),
    @required TResult phoneChanged(String phone),
    @required TResult emailChanged(String email),
    @required TResult schoolChanged(String school),
    @required TResult passwordChanged(String password),
    @required TResult passwordAgainChanged(String passwordAgain),
    @required TResult checkboxChanged(bool checkBox),
    @required TResult registerWithEmailAndPasswordPressed(),
  }) {
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(dobChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(schoolChanged != null);
    assert(passwordChanged != null);
    assert(passwordAgainChanged != null);
    assert(checkboxChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult surnameChanged(String surname),
    TResult dobChanged(String dob),
    TResult phoneChanged(String phone),
    TResult emailChanged(String email),
    TResult schoolChanged(String school),
    TResult passwordChanged(String password),
    TResult passwordAgainChanged(String passwordAgain),
    TResult checkboxChanged(bool checkBox),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(NameChanged value),
    @required TResult surnameChanged(SurnameChanged value),
    @required TResult dobChanged(DobChanged value),
    @required TResult phoneChanged(PhoneChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult schoolChanged(SchoolChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult passwordAgainChanged(PasswordAgainChanged value),
    @required TResult checkboxChanged(CheckboxChanged value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
  }) {
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(dobChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(schoolChanged != null);
    assert(passwordChanged != null);
    assert(passwordAgainChanged != null);
    assert(checkboxChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(NameChanged value),
    TResult surnameChanged(SurnameChanged value),
    TResult dobChanged(DobChanged value),
    TResult phoneChanged(PhoneChanged value),
    TResult emailChanged(EmailChanged value),
    TResult schoolChanged(SchoolChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult passwordAgainChanged(PasswordAgainChanged value),
    TResult checkboxChanged(CheckboxChanged value),
    TResult registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignUpFormEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

/// @nodoc
abstract class $SchoolChangedCopyWith<$Res> {
  factory $SchoolChangedCopyWith(
          SchoolChanged value, $Res Function(SchoolChanged) then) =
      _$SchoolChangedCopyWithImpl<$Res>;
  $Res call({String school});
}

/// @nodoc
class _$SchoolChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $SchoolChangedCopyWith<$Res> {
  _$SchoolChangedCopyWithImpl(
      SchoolChanged _value, $Res Function(SchoolChanged) _then)
      : super(_value, (v) => _then(v as SchoolChanged));

  @override
  SchoolChanged get _value => super._value as SchoolChanged;

  @override
  $Res call({
    Object school = freezed,
  }) {
    return _then(SchoolChanged(
      school == freezed ? _value.school : school as String,
    ));
  }
}

/// @nodoc
class _$SchoolChanged with DiagnosticableTreeMixin implements SchoolChanged {
  const _$SchoolChanged(this.school) : assert(school != null);

  @override
  final String school;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.schoolChanged(school: $school)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormEvent.schoolChanged'))
      ..add(DiagnosticsProperty('school', school));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SchoolChanged &&
            (identical(other.school, school) ||
                const DeepCollectionEquality().equals(other.school, school)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(school);

  @JsonKey(ignore: true)
  @override
  $SchoolChangedCopyWith<SchoolChanged> get copyWith =>
      _$SchoolChangedCopyWithImpl<SchoolChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult surnameChanged(String surname),
    @required TResult dobChanged(String dob),
    @required TResult phoneChanged(String phone),
    @required TResult emailChanged(String email),
    @required TResult schoolChanged(String school),
    @required TResult passwordChanged(String password),
    @required TResult passwordAgainChanged(String passwordAgain),
    @required TResult checkboxChanged(bool checkBox),
    @required TResult registerWithEmailAndPasswordPressed(),
  }) {
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(dobChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(schoolChanged != null);
    assert(passwordChanged != null);
    assert(passwordAgainChanged != null);
    assert(checkboxChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return schoolChanged(school);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult surnameChanged(String surname),
    TResult dobChanged(String dob),
    TResult phoneChanged(String phone),
    TResult emailChanged(String email),
    TResult schoolChanged(String school),
    TResult passwordChanged(String password),
    TResult passwordAgainChanged(String passwordAgain),
    TResult checkboxChanged(bool checkBox),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (schoolChanged != null) {
      return schoolChanged(school);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(NameChanged value),
    @required TResult surnameChanged(SurnameChanged value),
    @required TResult dobChanged(DobChanged value),
    @required TResult phoneChanged(PhoneChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult schoolChanged(SchoolChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult passwordAgainChanged(PasswordAgainChanged value),
    @required TResult checkboxChanged(CheckboxChanged value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
  }) {
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(dobChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(schoolChanged != null);
    assert(passwordChanged != null);
    assert(passwordAgainChanged != null);
    assert(checkboxChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return schoolChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(NameChanged value),
    TResult surnameChanged(SurnameChanged value),
    TResult dobChanged(DobChanged value),
    TResult phoneChanged(PhoneChanged value),
    TResult emailChanged(EmailChanged value),
    TResult schoolChanged(SchoolChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult passwordAgainChanged(PasswordAgainChanged value),
    TResult checkboxChanged(CheckboxChanged value),
    TResult registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (schoolChanged != null) {
      return schoolChanged(this);
    }
    return orElse();
  }
}

abstract class SchoolChanged implements SignUpFormEvent {
  const factory SchoolChanged(String school) = _$SchoolChanged;

  String get school;
  @JsonKey(ignore: true)
  $SchoolChangedCopyWith<SchoolChanged> get copyWith;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(PasswordChanged(
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$PasswordChanged
    with DiagnosticableTreeMixin
    implements PasswordChanged {
  const _$PasswordChanged(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.passwordChanged(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormEvent.passwordChanged'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult surnameChanged(String surname),
    @required TResult dobChanged(String dob),
    @required TResult phoneChanged(String phone),
    @required TResult emailChanged(String email),
    @required TResult schoolChanged(String school),
    @required TResult passwordChanged(String password),
    @required TResult passwordAgainChanged(String passwordAgain),
    @required TResult checkboxChanged(bool checkBox),
    @required TResult registerWithEmailAndPasswordPressed(),
  }) {
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(dobChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(schoolChanged != null);
    assert(passwordChanged != null);
    assert(passwordAgainChanged != null);
    assert(checkboxChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult surnameChanged(String surname),
    TResult dobChanged(String dob),
    TResult phoneChanged(String phone),
    TResult emailChanged(String email),
    TResult schoolChanged(String school),
    TResult passwordChanged(String password),
    TResult passwordAgainChanged(String passwordAgain),
    TResult checkboxChanged(bool checkBox),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(NameChanged value),
    @required TResult surnameChanged(SurnameChanged value),
    @required TResult dobChanged(DobChanged value),
    @required TResult phoneChanged(PhoneChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult schoolChanged(SchoolChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult passwordAgainChanged(PasswordAgainChanged value),
    @required TResult checkboxChanged(CheckboxChanged value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
  }) {
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(dobChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(schoolChanged != null);
    assert(passwordChanged != null);
    assert(passwordAgainChanged != null);
    assert(checkboxChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(NameChanged value),
    TResult surnameChanged(SurnameChanged value),
    TResult dobChanged(DobChanged value),
    TResult phoneChanged(PhoneChanged value),
    TResult emailChanged(EmailChanged value),
    TResult schoolChanged(SchoolChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult passwordAgainChanged(PasswordAgainChanged value),
    TResult checkboxChanged(CheckboxChanged value),
    TResult registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignUpFormEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

/// @nodoc
abstract class $PasswordAgainChangedCopyWith<$Res> {
  factory $PasswordAgainChangedCopyWith(PasswordAgainChanged value,
          $Res Function(PasswordAgainChanged) then) =
      _$PasswordAgainChangedCopyWithImpl<$Res>;
  $Res call({String passwordAgain});
}

/// @nodoc
class _$PasswordAgainChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $PasswordAgainChangedCopyWith<$Res> {
  _$PasswordAgainChangedCopyWithImpl(
      PasswordAgainChanged _value, $Res Function(PasswordAgainChanged) _then)
      : super(_value, (v) => _then(v as PasswordAgainChanged));

  @override
  PasswordAgainChanged get _value => super._value as PasswordAgainChanged;

  @override
  $Res call({
    Object passwordAgain = freezed,
  }) {
    return _then(PasswordAgainChanged(
      passwordAgain == freezed ? _value.passwordAgain : passwordAgain as String,
    ));
  }
}

/// @nodoc
class _$PasswordAgainChanged
    with DiagnosticableTreeMixin
    implements PasswordAgainChanged {
  const _$PasswordAgainChanged(this.passwordAgain)
      : assert(passwordAgain != null);

  @override
  final String passwordAgain;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.passwordAgainChanged(passwordAgain: $passwordAgain)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormEvent.passwordAgainChanged'))
      ..add(DiagnosticsProperty('passwordAgain', passwordAgain));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordAgainChanged &&
            (identical(other.passwordAgain, passwordAgain) ||
                const DeepCollectionEquality()
                    .equals(other.passwordAgain, passwordAgain)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordAgain);

  @JsonKey(ignore: true)
  @override
  $PasswordAgainChangedCopyWith<PasswordAgainChanged> get copyWith =>
      _$PasswordAgainChangedCopyWithImpl<PasswordAgainChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult surnameChanged(String surname),
    @required TResult dobChanged(String dob),
    @required TResult phoneChanged(String phone),
    @required TResult emailChanged(String email),
    @required TResult schoolChanged(String school),
    @required TResult passwordChanged(String password),
    @required TResult passwordAgainChanged(String passwordAgain),
    @required TResult checkboxChanged(bool checkBox),
    @required TResult registerWithEmailAndPasswordPressed(),
  }) {
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(dobChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(schoolChanged != null);
    assert(passwordChanged != null);
    assert(passwordAgainChanged != null);
    assert(checkboxChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return passwordAgainChanged(passwordAgain);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult surnameChanged(String surname),
    TResult dobChanged(String dob),
    TResult phoneChanged(String phone),
    TResult emailChanged(String email),
    TResult schoolChanged(String school),
    TResult passwordChanged(String password),
    TResult passwordAgainChanged(String passwordAgain),
    TResult checkboxChanged(bool checkBox),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordAgainChanged != null) {
      return passwordAgainChanged(passwordAgain);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(NameChanged value),
    @required TResult surnameChanged(SurnameChanged value),
    @required TResult dobChanged(DobChanged value),
    @required TResult phoneChanged(PhoneChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult schoolChanged(SchoolChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult passwordAgainChanged(PasswordAgainChanged value),
    @required TResult checkboxChanged(CheckboxChanged value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
  }) {
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(dobChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(schoolChanged != null);
    assert(passwordChanged != null);
    assert(passwordAgainChanged != null);
    assert(checkboxChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return passwordAgainChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(NameChanged value),
    TResult surnameChanged(SurnameChanged value),
    TResult dobChanged(DobChanged value),
    TResult phoneChanged(PhoneChanged value),
    TResult emailChanged(EmailChanged value),
    TResult schoolChanged(SchoolChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult passwordAgainChanged(PasswordAgainChanged value),
    TResult checkboxChanged(CheckboxChanged value),
    TResult registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordAgainChanged != null) {
      return passwordAgainChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordAgainChanged implements SignUpFormEvent {
  const factory PasswordAgainChanged(String passwordAgain) =
      _$PasswordAgainChanged;

  String get passwordAgain;
  @JsonKey(ignore: true)
  $PasswordAgainChangedCopyWith<PasswordAgainChanged> get copyWith;
}

/// @nodoc
abstract class $CheckboxChangedCopyWith<$Res> {
  factory $CheckboxChangedCopyWith(
          CheckboxChanged value, $Res Function(CheckboxChanged) then) =
      _$CheckboxChangedCopyWithImpl<$Res>;
  $Res call({bool checkBox});
}

/// @nodoc
class _$CheckboxChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $CheckboxChangedCopyWith<$Res> {
  _$CheckboxChangedCopyWithImpl(
      CheckboxChanged _value, $Res Function(CheckboxChanged) _then)
      : super(_value, (v) => _then(v as CheckboxChanged));

  @override
  CheckboxChanged get _value => super._value as CheckboxChanged;

  @override
  $Res call({
    Object checkBox = freezed,
  }) {
    return _then(CheckboxChanged(
      checkBox == freezed ? _value.checkBox : checkBox as bool,
    ));
  }
}

/// @nodoc
class _$CheckboxChanged
    with DiagnosticableTreeMixin
    implements CheckboxChanged {
  const _$CheckboxChanged(this.checkBox) : assert(checkBox != null);

  @override
  final bool checkBox;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.checkboxChanged(checkBox: $checkBox)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormEvent.checkboxChanged'))
      ..add(DiagnosticsProperty('checkBox', checkBox));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CheckboxChanged &&
            (identical(other.checkBox, checkBox) ||
                const DeepCollectionEquality()
                    .equals(other.checkBox, checkBox)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(checkBox);

  @JsonKey(ignore: true)
  @override
  $CheckboxChangedCopyWith<CheckboxChanged> get copyWith =>
      _$CheckboxChangedCopyWithImpl<CheckboxChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult surnameChanged(String surname),
    @required TResult dobChanged(String dob),
    @required TResult phoneChanged(String phone),
    @required TResult emailChanged(String email),
    @required TResult schoolChanged(String school),
    @required TResult passwordChanged(String password),
    @required TResult passwordAgainChanged(String passwordAgain),
    @required TResult checkboxChanged(bool checkBox),
    @required TResult registerWithEmailAndPasswordPressed(),
  }) {
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(dobChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(schoolChanged != null);
    assert(passwordChanged != null);
    assert(passwordAgainChanged != null);
    assert(checkboxChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return checkboxChanged(checkBox);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult surnameChanged(String surname),
    TResult dobChanged(String dob),
    TResult phoneChanged(String phone),
    TResult emailChanged(String email),
    TResult schoolChanged(String school),
    TResult passwordChanged(String password),
    TResult passwordAgainChanged(String passwordAgain),
    TResult checkboxChanged(bool checkBox),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (checkboxChanged != null) {
      return checkboxChanged(checkBox);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(NameChanged value),
    @required TResult surnameChanged(SurnameChanged value),
    @required TResult dobChanged(DobChanged value),
    @required TResult phoneChanged(PhoneChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult schoolChanged(SchoolChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult passwordAgainChanged(PasswordAgainChanged value),
    @required TResult checkboxChanged(CheckboxChanged value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
  }) {
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(dobChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(schoolChanged != null);
    assert(passwordChanged != null);
    assert(passwordAgainChanged != null);
    assert(checkboxChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return checkboxChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(NameChanged value),
    TResult surnameChanged(SurnameChanged value),
    TResult dobChanged(DobChanged value),
    TResult phoneChanged(PhoneChanged value),
    TResult emailChanged(EmailChanged value),
    TResult schoolChanged(SchoolChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult passwordAgainChanged(PasswordAgainChanged value),
    TResult checkboxChanged(CheckboxChanged value),
    TResult registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (checkboxChanged != null) {
      return checkboxChanged(this);
    }
    return orElse();
  }
}

abstract class CheckboxChanged implements SignUpFormEvent {
  const factory CheckboxChanged(bool checkBox) = _$CheckboxChanged;

  bool get checkBox;
  @JsonKey(ignore: true)
  $CheckboxChangedCopyWith<CheckboxChanged> get copyWith;
}

/// @nodoc
abstract class $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordPressedCopyWith(
          RegisterWithEmailAndPasswordPressed value,
          $Res Function(RegisterWithEmailAndPasswordPressed) then) =
      _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordPressedCopyWithImpl(
      RegisterWithEmailAndPasswordPressed _value,
      $Res Function(RegisterWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPasswordPressed));

  @override
  RegisterWithEmailAndPasswordPressed get _value =>
      super._value as RegisterWithEmailAndPasswordPressed;
}

/// @nodoc
class _$RegisterWithEmailAndPasswordPressed
    with DiagnosticableTreeMixin
    implements RegisterWithEmailAndPasswordPressed {
  const _$RegisterWithEmailAndPasswordPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignUpFormEvent.registerWithEmailAndPasswordPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult surnameChanged(String surname),
    @required TResult dobChanged(String dob),
    @required TResult phoneChanged(String phone),
    @required TResult emailChanged(String email),
    @required TResult schoolChanged(String school),
    @required TResult passwordChanged(String password),
    @required TResult passwordAgainChanged(String passwordAgain),
    @required TResult checkboxChanged(bool checkBox),
    @required TResult registerWithEmailAndPasswordPressed(),
  }) {
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(dobChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(schoolChanged != null);
    assert(passwordChanged != null);
    assert(passwordAgainChanged != null);
    assert(checkboxChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult surnameChanged(String surname),
    TResult dobChanged(String dob),
    TResult phoneChanged(String phone),
    TResult emailChanged(String email),
    TResult schoolChanged(String school),
    TResult passwordChanged(String password),
    TResult passwordAgainChanged(String passwordAgain),
    TResult checkboxChanged(bool checkBox),
    TResult registerWithEmailAndPasswordPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(NameChanged value),
    @required TResult surnameChanged(SurnameChanged value),
    @required TResult dobChanged(DobChanged value),
    @required TResult phoneChanged(PhoneChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult schoolChanged(SchoolChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult passwordAgainChanged(PasswordAgainChanged value),
    @required TResult checkboxChanged(CheckboxChanged value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
  }) {
    assert(nameChanged != null);
    assert(surnameChanged != null);
    assert(dobChanged != null);
    assert(phoneChanged != null);
    assert(emailChanged != null);
    assert(schoolChanged != null);
    assert(passwordChanged != null);
    assert(passwordAgainChanged != null);
    assert(checkboxChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(NameChanged value),
    TResult surnameChanged(SurnameChanged value),
    TResult dobChanged(DobChanged value),
    TResult phoneChanged(PhoneChanged value),
    TResult emailChanged(EmailChanged value),
    TResult schoolChanged(SchoolChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult passwordAgainChanged(PasswordAgainChanged value),
    TResult checkboxChanged(CheckboxChanged value),
    TResult registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasswordPressed implements SignUpFormEvent {
  const factory RegisterWithEmailAndPasswordPressed() =
      _$RegisterWithEmailAndPasswordPressed;
}

/// @nodoc
class _$SignUpFormStateTearOff {
  const _$SignUpFormStateTearOff();

// ignore: unused_element
  _SignUpFormState call(
      {@required String name,
      @required String surname,
      @required String dob,
      @required String phone,
      @required String email,
      @required String school,
      @required String password,
      @required String passwordAgain,
      @required bool checkBox,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Either<Failure, Unit> authFailureOrSuccessOption}) {
    return _SignUpFormState(
      name: name,
      surname: surname,
      dob: dob,
      phone: phone,
      email: email,
      school: school,
      password: password,
      passwordAgain: passwordAgain,
      checkBox: checkBox,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpFormState = _$SignUpFormStateTearOff();

/// @nodoc
mixin _$SignUpFormState {
  String get name;
  String get surname;
  String get dob;
  String get phone;
  String get email;
  String get school; // @required String secondarySchool,
  String get password;
  String get passwordAgain;
  bool get checkBox;
  bool get showErrorMessages;
  bool get isSubmitting;
  Either<Failure, Unit> get authFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $SignUpFormStateCopyWith<SignUpFormState> get copyWith;
}

/// @nodoc
abstract class $SignUpFormStateCopyWith<$Res> {
  factory $SignUpFormStateCopyWith(
          SignUpFormState value, $Res Function(SignUpFormState) then) =
      _$SignUpFormStateCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String surname,
      String dob,
      String phone,
      String email,
      String school,
      String password,
      String passwordAgain,
      bool checkBox,
      bool showErrorMessages,
      bool isSubmitting,
      Either<Failure, Unit> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignUpFormStateCopyWithImpl<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  _$SignUpFormStateCopyWithImpl(this._value, this._then);

  final SignUpFormState _value;
  // ignore: unused_field
  final $Res Function(SignUpFormState) _then;

  @override
  $Res call({
    Object name = freezed,
    Object surname = freezed,
    Object dob = freezed,
    Object phone = freezed,
    Object email = freezed,
    Object school = freezed,
    Object password = freezed,
    Object passwordAgain = freezed,
    Object checkBox = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      surname: surname == freezed ? _value.surname : surname as String,
      dob: dob == freezed ? _value.dob : dob as String,
      phone: phone == freezed ? _value.phone : phone as String,
      email: email == freezed ? _value.email : email as String,
      school: school == freezed ? _value.school : school as String,
      password: password == freezed ? _value.password : password as String,
      passwordAgain: passwordAgain == freezed
          ? _value.passwordAgain
          : passwordAgain as String,
      checkBox: checkBox == freezed ? _value.checkBox : checkBox as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Either<Failure, Unit>,
    ));
  }
}

/// @nodoc
abstract class _$SignUpFormStateCopyWith<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  factory _$SignUpFormStateCopyWith(
          _SignUpFormState value, $Res Function(_SignUpFormState) then) =
      __$SignUpFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String surname,
      String dob,
      String phone,
      String email,
      String school,
      String password,
      String passwordAgain,
      bool checkBox,
      bool showErrorMessages,
      bool isSubmitting,
      Either<Failure, Unit> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignUpFormStateCopyWithImpl<$Res>
    extends _$SignUpFormStateCopyWithImpl<$Res>
    implements _$SignUpFormStateCopyWith<$Res> {
  __$SignUpFormStateCopyWithImpl(
      _SignUpFormState _value, $Res Function(_SignUpFormState) _then)
      : super(_value, (v) => _then(v as _SignUpFormState));

  @override
  _SignUpFormState get _value => super._value as _SignUpFormState;

  @override
  $Res call({
    Object name = freezed,
    Object surname = freezed,
    Object dob = freezed,
    Object phone = freezed,
    Object email = freezed,
    Object school = freezed,
    Object password = freezed,
    Object passwordAgain = freezed,
    Object checkBox = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignUpFormState(
      name: name == freezed ? _value.name : name as String,
      surname: surname == freezed ? _value.surname : surname as String,
      dob: dob == freezed ? _value.dob : dob as String,
      phone: phone == freezed ? _value.phone : phone as String,
      email: email == freezed ? _value.email : email as String,
      school: school == freezed ? _value.school : school as String,
      password: password == freezed ? _value.password : password as String,
      passwordAgain: passwordAgain == freezed
          ? _value.passwordAgain
          : passwordAgain as String,
      checkBox: checkBox == freezed ? _value.checkBox : checkBox as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Either<Failure, Unit>,
    ));
  }
}

/// @nodoc
class _$_SignUpFormState
    with DiagnosticableTreeMixin
    implements _SignUpFormState {
  const _$_SignUpFormState(
      {@required this.name,
      @required this.surname,
      @required this.dob,
      @required this.phone,
      @required this.email,
      @required this.school,
      @required this.password,
      @required this.passwordAgain,
      @required this.checkBox,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(name != null),
        assert(surname != null),
        assert(dob != null),
        assert(phone != null),
        assert(email != null),
        assert(school != null),
        assert(password != null),
        assert(passwordAgain != null),
        assert(checkBox != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final String name;
  @override
  final String surname;
  @override
  final String dob;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String school;
  @override // @required String secondarySchool,
  final String password;
  @override
  final String passwordAgain;
  @override
  final bool checkBox;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Either<Failure, Unit> authFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpFormState(name: $name, surname: $surname, dob: $dob, phone: $phone, email: $email, school: $school, password: $password, passwordAgain: $passwordAgain, checkBox: $checkBox, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpFormState'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('surname', surname))
      ..add(DiagnosticsProperty('dob', dob))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('school', school))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('passwordAgain', passwordAgain))
      ..add(DiagnosticsProperty('checkBox', checkBox))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty(
          'authFailureOrSuccessOption', authFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpFormState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality()
                    .equals(other.surname, surname)) &&
            (identical(other.dob, dob) ||
                const DeepCollectionEquality().equals(other.dob, dob)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.school, school) ||
                const DeepCollectionEquality().equals(other.school, school)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.passwordAgain, passwordAgain) ||
                const DeepCollectionEquality()
                    .equals(other.passwordAgain, passwordAgain)) &&
            (identical(other.checkBox, checkBox) ||
                const DeepCollectionEquality()
                    .equals(other.checkBox, checkBox)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(surname) ^
      const DeepCollectionEquality().hash(dob) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(school) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(passwordAgain) ^
      const DeepCollectionEquality().hash(checkBox) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignUpFormStateCopyWith<_SignUpFormState> get copyWith =>
      __$SignUpFormStateCopyWithImpl<_SignUpFormState>(this, _$identity);
}

abstract class _SignUpFormState implements SignUpFormState {
  const factory _SignUpFormState(
          {@required String name,
          @required String surname,
          @required String dob,
          @required String phone,
          @required String email,
          @required String school,
          @required String password,
          @required String passwordAgain,
          @required bool checkBox,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required Either<Failure, Unit> authFailureOrSuccessOption}) =
      _$_SignUpFormState;

  @override
  String get name;
  @override
  String get surname;
  @override
  String get dob;
  @override
  String get phone;
  @override
  String get email;
  @override
  String get school;
  @override // @required String secondarySchool,
  String get password;
  @override
  String get passwordAgain;
  @override
  bool get checkBox;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Either<Failure, Unit> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SignUpFormStateCopyWith<_SignUpFormState> get copyWith;
}
