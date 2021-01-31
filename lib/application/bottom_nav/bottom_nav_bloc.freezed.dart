// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bottom_nav_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BottomNavEventTearOff {
  const _$BottomNavEventTearOff();

// ignore: unused_element
  HomeClick homeClick() {
    return const HomeClick();
  }

// ignore: unused_element
  AuctionClick auctionClick() {
    return const AuctionClick();
  }

// ignore: unused_element
  BuyNowClick buyNowClick() {
    return const BuyNowClick();
  }

// ignore: unused_element
  ProfileClick profileClick() {
    return const ProfileClick();
  }
}

/// @nodoc
// ignore: unused_element
const $BottomNavEvent = _$BottomNavEventTearOff();

/// @nodoc
mixin _$BottomNavEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult homeClick(),
    @required TResult auctionClick(),
    @required TResult buyNowClick(),
    @required TResult profileClick(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult homeClick(),
    TResult auctionClick(),
    TResult buyNowClick(),
    TResult profileClick(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult homeClick(HomeClick value),
    @required TResult auctionClick(AuctionClick value),
    @required TResult buyNowClick(BuyNowClick value),
    @required TResult profileClick(ProfileClick value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult homeClick(HomeClick value),
    TResult auctionClick(AuctionClick value),
    TResult buyNowClick(BuyNowClick value),
    TResult profileClick(ProfileClick value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BottomNavEventCopyWith<$Res> {
  factory $BottomNavEventCopyWith(
          BottomNavEvent value, $Res Function(BottomNavEvent) then) =
      _$BottomNavEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BottomNavEventCopyWithImpl<$Res>
    implements $BottomNavEventCopyWith<$Res> {
  _$BottomNavEventCopyWithImpl(this._value, this._then);

  final BottomNavEvent _value;
  // ignore: unused_field
  final $Res Function(BottomNavEvent) _then;
}

/// @nodoc
abstract class $HomeClickCopyWith<$Res> {
  factory $HomeClickCopyWith(HomeClick value, $Res Function(HomeClick) then) =
      _$HomeClickCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeClickCopyWithImpl<$Res> extends _$BottomNavEventCopyWithImpl<$Res>
    implements $HomeClickCopyWith<$Res> {
  _$HomeClickCopyWithImpl(HomeClick _value, $Res Function(HomeClick) _then)
      : super(_value, (v) => _then(v as HomeClick));

  @override
  HomeClick get _value => super._value as HomeClick;
}

/// @nodoc
class _$HomeClick implements HomeClick {
  const _$HomeClick();

  @override
  String toString() {
    return 'BottomNavEvent.homeClick()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomeClick);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult homeClick(),
    @required TResult auctionClick(),
    @required TResult buyNowClick(),
    @required TResult profileClick(),
  }) {
    assert(homeClick != null);
    assert(auctionClick != null);
    assert(buyNowClick != null);
    assert(profileClick != null);
    return homeClick();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult homeClick(),
    TResult auctionClick(),
    TResult buyNowClick(),
    TResult profileClick(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (homeClick != null) {
      return homeClick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult homeClick(HomeClick value),
    @required TResult auctionClick(AuctionClick value),
    @required TResult buyNowClick(BuyNowClick value),
    @required TResult profileClick(ProfileClick value),
  }) {
    assert(homeClick != null);
    assert(auctionClick != null);
    assert(buyNowClick != null);
    assert(profileClick != null);
    return homeClick(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult homeClick(HomeClick value),
    TResult auctionClick(AuctionClick value),
    TResult buyNowClick(BuyNowClick value),
    TResult profileClick(ProfileClick value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (homeClick != null) {
      return homeClick(this);
    }
    return orElse();
  }
}

abstract class HomeClick implements BottomNavEvent {
  const factory HomeClick() = _$HomeClick;
}

/// @nodoc
abstract class $AuctionClickCopyWith<$Res> {
  factory $AuctionClickCopyWith(
          AuctionClick value, $Res Function(AuctionClick) then) =
      _$AuctionClickCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuctionClickCopyWithImpl<$Res>
    extends _$BottomNavEventCopyWithImpl<$Res>
    implements $AuctionClickCopyWith<$Res> {
  _$AuctionClickCopyWithImpl(
      AuctionClick _value, $Res Function(AuctionClick) _then)
      : super(_value, (v) => _then(v as AuctionClick));

  @override
  AuctionClick get _value => super._value as AuctionClick;
}

/// @nodoc
class _$AuctionClick implements AuctionClick {
  const _$AuctionClick();

  @override
  String toString() {
    return 'BottomNavEvent.auctionClick()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuctionClick);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult homeClick(),
    @required TResult auctionClick(),
    @required TResult buyNowClick(),
    @required TResult profileClick(),
  }) {
    assert(homeClick != null);
    assert(auctionClick != null);
    assert(buyNowClick != null);
    assert(profileClick != null);
    return auctionClick();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult homeClick(),
    TResult auctionClick(),
    TResult buyNowClick(),
    TResult profileClick(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (auctionClick != null) {
      return auctionClick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult homeClick(HomeClick value),
    @required TResult auctionClick(AuctionClick value),
    @required TResult buyNowClick(BuyNowClick value),
    @required TResult profileClick(ProfileClick value),
  }) {
    assert(homeClick != null);
    assert(auctionClick != null);
    assert(buyNowClick != null);
    assert(profileClick != null);
    return auctionClick(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult homeClick(HomeClick value),
    TResult auctionClick(AuctionClick value),
    TResult buyNowClick(BuyNowClick value),
    TResult profileClick(ProfileClick value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (auctionClick != null) {
      return auctionClick(this);
    }
    return orElse();
  }
}

abstract class AuctionClick implements BottomNavEvent {
  const factory AuctionClick() = _$AuctionClick;
}

/// @nodoc
abstract class $BuyNowClickCopyWith<$Res> {
  factory $BuyNowClickCopyWith(
          BuyNowClick value, $Res Function(BuyNowClick) then) =
      _$BuyNowClickCopyWithImpl<$Res>;
}

/// @nodoc
class _$BuyNowClickCopyWithImpl<$Res> extends _$BottomNavEventCopyWithImpl<$Res>
    implements $BuyNowClickCopyWith<$Res> {
  _$BuyNowClickCopyWithImpl(
      BuyNowClick _value, $Res Function(BuyNowClick) _then)
      : super(_value, (v) => _then(v as BuyNowClick));

  @override
  BuyNowClick get _value => super._value as BuyNowClick;
}

/// @nodoc
class _$BuyNowClick implements BuyNowClick {
  const _$BuyNowClick();

  @override
  String toString() {
    return 'BottomNavEvent.buyNowClick()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BuyNowClick);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult homeClick(),
    @required TResult auctionClick(),
    @required TResult buyNowClick(),
    @required TResult profileClick(),
  }) {
    assert(homeClick != null);
    assert(auctionClick != null);
    assert(buyNowClick != null);
    assert(profileClick != null);
    return buyNowClick();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult homeClick(),
    TResult auctionClick(),
    TResult buyNowClick(),
    TResult profileClick(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (buyNowClick != null) {
      return buyNowClick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult homeClick(HomeClick value),
    @required TResult auctionClick(AuctionClick value),
    @required TResult buyNowClick(BuyNowClick value),
    @required TResult profileClick(ProfileClick value),
  }) {
    assert(homeClick != null);
    assert(auctionClick != null);
    assert(buyNowClick != null);
    assert(profileClick != null);
    return buyNowClick(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult homeClick(HomeClick value),
    TResult auctionClick(AuctionClick value),
    TResult buyNowClick(BuyNowClick value),
    TResult profileClick(ProfileClick value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (buyNowClick != null) {
      return buyNowClick(this);
    }
    return orElse();
  }
}

abstract class BuyNowClick implements BottomNavEvent {
  const factory BuyNowClick() = _$BuyNowClick;
}

/// @nodoc
abstract class $ProfileClickCopyWith<$Res> {
  factory $ProfileClickCopyWith(
          ProfileClick value, $Res Function(ProfileClick) then) =
      _$ProfileClickCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileClickCopyWithImpl<$Res>
    extends _$BottomNavEventCopyWithImpl<$Res>
    implements $ProfileClickCopyWith<$Res> {
  _$ProfileClickCopyWithImpl(
      ProfileClick _value, $Res Function(ProfileClick) _then)
      : super(_value, (v) => _then(v as ProfileClick));

  @override
  ProfileClick get _value => super._value as ProfileClick;
}

/// @nodoc
class _$ProfileClick implements ProfileClick {
  const _$ProfileClick();

  @override
  String toString() {
    return 'BottomNavEvent.profileClick()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProfileClick);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult homeClick(),
    @required TResult auctionClick(),
    @required TResult buyNowClick(),
    @required TResult profileClick(),
  }) {
    assert(homeClick != null);
    assert(auctionClick != null);
    assert(buyNowClick != null);
    assert(profileClick != null);
    return profileClick();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult homeClick(),
    TResult auctionClick(),
    TResult buyNowClick(),
    TResult profileClick(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (profileClick != null) {
      return profileClick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult homeClick(HomeClick value),
    @required TResult auctionClick(AuctionClick value),
    @required TResult buyNowClick(BuyNowClick value),
    @required TResult profileClick(ProfileClick value),
  }) {
    assert(homeClick != null);
    assert(auctionClick != null);
    assert(buyNowClick != null);
    assert(profileClick != null);
    return profileClick(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult homeClick(HomeClick value),
    TResult auctionClick(AuctionClick value),
    TResult buyNowClick(BuyNowClick value),
    TResult profileClick(ProfileClick value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (profileClick != null) {
      return profileClick(this);
    }
    return orElse();
  }
}

abstract class ProfileClick implements BottomNavEvent {
  const factory ProfileClick() = _$ProfileClick;
}

/// @nodoc
class _$BottomNavStateTearOff {
  const _$BottomNavStateTearOff();

// ignore: unused_element
  HomeState homeState() {
    return const HomeState();
  }

// ignore: unused_element
  AuctionState auctionState() {
    return const AuctionState();
  }

// ignore: unused_element
  BuyNowState buyNowState() {
    return const BuyNowState();
  }

// ignore: unused_element
  ProfileState profileState() {
    return const ProfileState();
  }
}

/// @nodoc
// ignore: unused_element
const $BottomNavState = _$BottomNavStateTearOff();

/// @nodoc
mixin _$BottomNavState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult homeState(),
    @required TResult auctionState(),
    @required TResult buyNowState(),
    @required TResult profileState(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult homeState(),
    TResult auctionState(),
    TResult buyNowState(),
    TResult profileState(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult homeState(HomeState value),
    @required TResult auctionState(AuctionState value),
    @required TResult buyNowState(BuyNowState value),
    @required TResult profileState(ProfileState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult homeState(HomeState value),
    TResult auctionState(AuctionState value),
    TResult buyNowState(BuyNowState value),
    TResult profileState(ProfileState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BottomNavStateCopyWith<$Res> {
  factory $BottomNavStateCopyWith(
          BottomNavState value, $Res Function(BottomNavState) then) =
      _$BottomNavStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BottomNavStateCopyWithImpl<$Res>
    implements $BottomNavStateCopyWith<$Res> {
  _$BottomNavStateCopyWithImpl(this._value, this._then);

  final BottomNavState _value;
  // ignore: unused_field
  final $Res Function(BottomNavState) _then;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> extends _$BottomNavStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(HomeState _value, $Res Function(HomeState) _then)
      : super(_value, (v) => _then(v as HomeState));

  @override
  HomeState get _value => super._value as HomeState;
}

@factoryMethod

/// @nodoc
class _$HomeState implements HomeState {
  const _$HomeState();

  @override
  String toString() {
    return 'BottomNavState.homeState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult homeState(),
    @required TResult auctionState(),
    @required TResult buyNowState(),
    @required TResult profileState(),
  }) {
    assert(homeState != null);
    assert(auctionState != null);
    assert(buyNowState != null);
    assert(profileState != null);
    return homeState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult homeState(),
    TResult auctionState(),
    TResult buyNowState(),
    TResult profileState(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (homeState != null) {
      return homeState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult homeState(HomeState value),
    @required TResult auctionState(AuctionState value),
    @required TResult buyNowState(BuyNowState value),
    @required TResult profileState(ProfileState value),
  }) {
    assert(homeState != null);
    assert(auctionState != null);
    assert(buyNowState != null);
    assert(profileState != null);
    return homeState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult homeState(HomeState value),
    TResult auctionState(AuctionState value),
    TResult buyNowState(BuyNowState value),
    TResult profileState(ProfileState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (homeState != null) {
      return homeState(this);
    }
    return orElse();
  }
}

abstract class HomeState implements BottomNavState {
  const factory HomeState() = _$HomeState;
}

/// @nodoc
abstract class $AuctionStateCopyWith<$Res> {
  factory $AuctionStateCopyWith(
          AuctionState value, $Res Function(AuctionState) then) =
      _$AuctionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuctionStateCopyWithImpl<$Res>
    extends _$BottomNavStateCopyWithImpl<$Res>
    implements $AuctionStateCopyWith<$Res> {
  _$AuctionStateCopyWithImpl(
      AuctionState _value, $Res Function(AuctionState) _then)
      : super(_value, (v) => _then(v as AuctionState));

  @override
  AuctionState get _value => super._value as AuctionState;
}

/// @nodoc
class _$AuctionState implements AuctionState {
  const _$AuctionState();

  @override
  String toString() {
    return 'BottomNavState.auctionState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuctionState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult homeState(),
    @required TResult auctionState(),
    @required TResult buyNowState(),
    @required TResult profileState(),
  }) {
    assert(homeState != null);
    assert(auctionState != null);
    assert(buyNowState != null);
    assert(profileState != null);
    return auctionState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult homeState(),
    TResult auctionState(),
    TResult buyNowState(),
    TResult profileState(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (auctionState != null) {
      return auctionState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult homeState(HomeState value),
    @required TResult auctionState(AuctionState value),
    @required TResult buyNowState(BuyNowState value),
    @required TResult profileState(ProfileState value),
  }) {
    assert(homeState != null);
    assert(auctionState != null);
    assert(buyNowState != null);
    assert(profileState != null);
    return auctionState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult homeState(HomeState value),
    TResult auctionState(AuctionState value),
    TResult buyNowState(BuyNowState value),
    TResult profileState(ProfileState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (auctionState != null) {
      return auctionState(this);
    }
    return orElse();
  }
}

abstract class AuctionState implements BottomNavState {
  const factory AuctionState() = _$AuctionState;
}

/// @nodoc
abstract class $BuyNowStateCopyWith<$Res> {
  factory $BuyNowStateCopyWith(
          BuyNowState value, $Res Function(BuyNowState) then) =
      _$BuyNowStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BuyNowStateCopyWithImpl<$Res> extends _$BottomNavStateCopyWithImpl<$Res>
    implements $BuyNowStateCopyWith<$Res> {
  _$BuyNowStateCopyWithImpl(
      BuyNowState _value, $Res Function(BuyNowState) _then)
      : super(_value, (v) => _then(v as BuyNowState));

  @override
  BuyNowState get _value => super._value as BuyNowState;
}

/// @nodoc
class _$BuyNowState implements BuyNowState {
  const _$BuyNowState();

  @override
  String toString() {
    return 'BottomNavState.buyNowState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BuyNowState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult homeState(),
    @required TResult auctionState(),
    @required TResult buyNowState(),
    @required TResult profileState(),
  }) {
    assert(homeState != null);
    assert(auctionState != null);
    assert(buyNowState != null);
    assert(profileState != null);
    return buyNowState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult homeState(),
    TResult auctionState(),
    TResult buyNowState(),
    TResult profileState(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (buyNowState != null) {
      return buyNowState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult homeState(HomeState value),
    @required TResult auctionState(AuctionState value),
    @required TResult buyNowState(BuyNowState value),
    @required TResult profileState(ProfileState value),
  }) {
    assert(homeState != null);
    assert(auctionState != null);
    assert(buyNowState != null);
    assert(profileState != null);
    return buyNowState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult homeState(HomeState value),
    TResult auctionState(AuctionState value),
    TResult buyNowState(BuyNowState value),
    TResult profileState(ProfileState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (buyNowState != null) {
      return buyNowState(this);
    }
    return orElse();
  }
}

abstract class BuyNowState implements BottomNavState {
  const factory BuyNowState() = _$BuyNowState;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res>
    extends _$BottomNavStateCopyWithImpl<$Res>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(
      ProfileState _value, $Res Function(ProfileState) _then)
      : super(_value, (v) => _then(v as ProfileState));

  @override
  ProfileState get _value => super._value as ProfileState;
}

/// @nodoc
class _$ProfileState implements ProfileState {
  const _$ProfileState();

  @override
  String toString() {
    return 'BottomNavState.profileState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult homeState(),
    @required TResult auctionState(),
    @required TResult buyNowState(),
    @required TResult profileState(),
  }) {
    assert(homeState != null);
    assert(auctionState != null);
    assert(buyNowState != null);
    assert(profileState != null);
    return profileState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult homeState(),
    TResult auctionState(),
    TResult buyNowState(),
    TResult profileState(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (profileState != null) {
      return profileState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult homeState(HomeState value),
    @required TResult auctionState(AuctionState value),
    @required TResult buyNowState(BuyNowState value),
    @required TResult profileState(ProfileState value),
  }) {
    assert(homeState != null);
    assert(auctionState != null);
    assert(buyNowState != null);
    assert(profileState != null);
    return profileState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult homeState(HomeState value),
    TResult auctionState(AuctionState value),
    TResult buyNowState(BuyNowState value),
    TResult profileState(ProfileState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (profileState != null) {
      return profileState(this);
    }
    return orElse();
  }
}

abstract class ProfileState implements BottomNavState {
  const factory ProfileState() = _$ProfileState;
}
