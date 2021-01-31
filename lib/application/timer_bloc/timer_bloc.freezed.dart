// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TimerEventTearOff {
  const _$TimerEventTearOff();

// ignore: unused_element
  Start start({int duration}) {
    return Start(
      duration: duration,
    );
  }

// ignore: unused_element
  Resume resume({int duration}) {
    return Resume(
      duration: duration,
    );
  }

// ignore: unused_element
  Reset reset({int duration}) {
    return Reset(
      duration: duration,
    );
  }

// ignore: unused_element
  Tick tick({int duration}) {
    return Tick(
      duration: duration,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TimerEvent = _$TimerEventTearOff();

/// @nodoc
mixin _$TimerEvent {
  int get duration;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult start(int duration),
    @required TResult resume(int duration),
    @required TResult reset(int duration),
    @required TResult tick(int duration),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult start(int duration),
    TResult resume(int duration),
    TResult reset(int duration),
    TResult tick(int duration),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult start(Start value),
    @required TResult resume(Resume value),
    @required TResult reset(Reset value),
    @required TResult tick(Tick value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult start(Start value),
    TResult resume(Resume value),
    TResult reset(Reset value),
    TResult tick(Tick value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $TimerEventCopyWith<TimerEvent> get copyWith;
}

/// @nodoc
abstract class $TimerEventCopyWith<$Res> {
  factory $TimerEventCopyWith(
          TimerEvent value, $Res Function(TimerEvent) then) =
      _$TimerEventCopyWithImpl<$Res>;
  $Res call({int duration});
}

/// @nodoc
class _$TimerEventCopyWithImpl<$Res> implements $TimerEventCopyWith<$Res> {
  _$TimerEventCopyWithImpl(this._value, this._then);

  final TimerEvent _value;
  // ignore: unused_field
  final $Res Function(TimerEvent) _then;

  @override
  $Res call({
    Object duration = freezed,
  }) {
    return _then(_value.copyWith(
      duration: duration == freezed ? _value.duration : duration as int,
    ));
  }
}

/// @nodoc
abstract class $StartCopyWith<$Res> implements $TimerEventCopyWith<$Res> {
  factory $StartCopyWith(Start value, $Res Function(Start) then) =
      _$StartCopyWithImpl<$Res>;
  @override
  $Res call({int duration});
}

/// @nodoc
class _$StartCopyWithImpl<$Res> extends _$TimerEventCopyWithImpl<$Res>
    implements $StartCopyWith<$Res> {
  _$StartCopyWithImpl(Start _value, $Res Function(Start) _then)
      : super(_value, (v) => _then(v as Start));

  @override
  Start get _value => super._value as Start;

  @override
  $Res call({
    Object duration = freezed,
  }) {
    return _then(Start(
      duration: duration == freezed ? _value.duration : duration as int,
    ));
  }
}

/// @nodoc
class _$Start with DiagnosticableTreeMixin implements Start {
  const _$Start({this.duration});

  @override
  final int duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerEvent.start(duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerEvent.start'))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Start &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  $StartCopyWith<Start> get copyWith =>
      _$StartCopyWithImpl<Start>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult start(int duration),
    @required TResult resume(int duration),
    @required TResult reset(int duration),
    @required TResult tick(int duration),
  }) {
    assert(start != null);
    assert(resume != null);
    assert(reset != null);
    assert(tick != null);
    return start(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult start(int duration),
    TResult resume(int duration),
    TResult reset(int duration),
    TResult tick(int duration),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult start(Start value),
    @required TResult resume(Resume value),
    @required TResult reset(Reset value),
    @required TResult tick(Tick value),
  }) {
    assert(start != null);
    assert(resume != null);
    assert(reset != null);
    assert(tick != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult start(Start value),
    TResult resume(Resume value),
    TResult reset(Reset value),
    TResult tick(Tick value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class Start implements TimerEvent {
  const factory Start({int duration}) = _$Start;

  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  $StartCopyWith<Start> get copyWith;
}

/// @nodoc
abstract class $ResumeCopyWith<$Res> implements $TimerEventCopyWith<$Res> {
  factory $ResumeCopyWith(Resume value, $Res Function(Resume) then) =
      _$ResumeCopyWithImpl<$Res>;
  @override
  $Res call({int duration});
}

/// @nodoc
class _$ResumeCopyWithImpl<$Res> extends _$TimerEventCopyWithImpl<$Res>
    implements $ResumeCopyWith<$Res> {
  _$ResumeCopyWithImpl(Resume _value, $Res Function(Resume) _then)
      : super(_value, (v) => _then(v as Resume));

  @override
  Resume get _value => super._value as Resume;

  @override
  $Res call({
    Object duration = freezed,
  }) {
    return _then(Resume(
      duration: duration == freezed ? _value.duration : duration as int,
    ));
  }
}

/// @nodoc
class _$Resume with DiagnosticableTreeMixin implements Resume {
  const _$Resume({this.duration});

  @override
  final int duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerEvent.resume(duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerEvent.resume'))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Resume &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  $ResumeCopyWith<Resume> get copyWith =>
      _$ResumeCopyWithImpl<Resume>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult start(int duration),
    @required TResult resume(int duration),
    @required TResult reset(int duration),
    @required TResult tick(int duration),
  }) {
    assert(start != null);
    assert(resume != null);
    assert(reset != null);
    assert(tick != null);
    return resume(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult start(int duration),
    TResult resume(int duration),
    TResult reset(int duration),
    TResult tick(int duration),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resume != null) {
      return resume(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult start(Start value),
    @required TResult resume(Resume value),
    @required TResult reset(Reset value),
    @required TResult tick(Tick value),
  }) {
    assert(start != null);
    assert(resume != null);
    assert(reset != null);
    assert(tick != null);
    return resume(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult start(Start value),
    TResult resume(Resume value),
    TResult reset(Reset value),
    TResult tick(Tick value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resume != null) {
      return resume(this);
    }
    return orElse();
  }
}

abstract class Resume implements TimerEvent {
  const factory Resume({int duration}) = _$Resume;

  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  $ResumeCopyWith<Resume> get copyWith;
}

/// @nodoc
abstract class $ResetCopyWith<$Res> implements $TimerEventCopyWith<$Res> {
  factory $ResetCopyWith(Reset value, $Res Function(Reset) then) =
      _$ResetCopyWithImpl<$Res>;
  @override
  $Res call({int duration});
}

/// @nodoc
class _$ResetCopyWithImpl<$Res> extends _$TimerEventCopyWithImpl<$Res>
    implements $ResetCopyWith<$Res> {
  _$ResetCopyWithImpl(Reset _value, $Res Function(Reset) _then)
      : super(_value, (v) => _then(v as Reset));

  @override
  Reset get _value => super._value as Reset;

  @override
  $Res call({
    Object duration = freezed,
  }) {
    return _then(Reset(
      duration: duration == freezed ? _value.duration : duration as int,
    ));
  }
}

/// @nodoc
class _$Reset with DiagnosticableTreeMixin implements Reset {
  const _$Reset({this.duration});

  @override
  final int duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerEvent.reset(duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerEvent.reset'))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Reset &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  $ResetCopyWith<Reset> get copyWith =>
      _$ResetCopyWithImpl<Reset>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult start(int duration),
    @required TResult resume(int duration),
    @required TResult reset(int duration),
    @required TResult tick(int duration),
  }) {
    assert(start != null);
    assert(resume != null);
    assert(reset != null);
    assert(tick != null);
    return reset(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult start(int duration),
    TResult resume(int duration),
    TResult reset(int duration),
    TResult tick(int duration),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reset != null) {
      return reset(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult start(Start value),
    @required TResult resume(Resume value),
    @required TResult reset(Reset value),
    @required TResult tick(Tick value),
  }) {
    assert(start != null);
    assert(resume != null);
    assert(reset != null);
    assert(tick != null);
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult start(Start value),
    TResult resume(Resume value),
    TResult reset(Reset value),
    TResult tick(Tick value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class Reset implements TimerEvent {
  const factory Reset({int duration}) = _$Reset;

  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  $ResetCopyWith<Reset> get copyWith;
}

/// @nodoc
abstract class $TickCopyWith<$Res> implements $TimerEventCopyWith<$Res> {
  factory $TickCopyWith(Tick value, $Res Function(Tick) then) =
      _$TickCopyWithImpl<$Res>;
  @override
  $Res call({int duration});
}

/// @nodoc
class _$TickCopyWithImpl<$Res> extends _$TimerEventCopyWithImpl<$Res>
    implements $TickCopyWith<$Res> {
  _$TickCopyWithImpl(Tick _value, $Res Function(Tick) _then)
      : super(_value, (v) => _then(v as Tick));

  @override
  Tick get _value => super._value as Tick;

  @override
  $Res call({
    Object duration = freezed,
  }) {
    return _then(Tick(
      duration: duration == freezed ? _value.duration : duration as int,
    ));
  }
}

/// @nodoc
class _$Tick with DiagnosticableTreeMixin implements Tick {
  const _$Tick({this.duration});

  @override
  final int duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerEvent.tick(duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerEvent.tick'))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Tick &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  $TickCopyWith<Tick> get copyWith =>
      _$TickCopyWithImpl<Tick>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult start(int duration),
    @required TResult resume(int duration),
    @required TResult reset(int duration),
    @required TResult tick(int duration),
  }) {
    assert(start != null);
    assert(resume != null);
    assert(reset != null);
    assert(tick != null);
    return tick(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult start(int duration),
    TResult resume(int duration),
    TResult reset(int duration),
    TResult tick(int duration),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tick != null) {
      return tick(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult start(Start value),
    @required TResult resume(Resume value),
    @required TResult reset(Reset value),
    @required TResult tick(Tick value),
  }) {
    assert(start != null);
    assert(resume != null);
    assert(reset != null);
    assert(tick != null);
    return tick(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult start(Start value),
    TResult resume(Resume value),
    TResult reset(Reset value),
    TResult tick(Tick value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tick != null) {
      return tick(this);
    }
    return orElse();
  }
}

abstract class Tick implements TimerEvent {
  const factory Tick({int duration}) = _$Tick;

  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  $TickCopyWith<Tick> get copyWith;
}

/// @nodoc
class _$TimerStateTearOff {
  const _$TimerStateTearOff();

// ignore: unused_element
  Ready ready({@factoryParam int duration}) {
    return Ready(
      duration: duration,
    );
  }

// ignore: unused_element
  Running running({int duration}) {
    return Running(
      duration: duration,
    );
  }

// ignore: unused_element
  Finished finished({int duration}) {
    return Finished(
      duration: duration,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TimerState = _$TimerStateTearOff();

/// @nodoc
mixin _$TimerState {
  @factoryParam
  int get duration;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult ready(@factoryParam int duration),
    @required TResult running(int duration),
    @required TResult finished(int duration),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult ready(@factoryParam int duration),
    TResult running(int duration),
    TResult finished(int duration),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult ready(Ready value),
    @required TResult running(Running value),
    @required TResult finished(Finished value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult ready(Ready value),
    TResult running(Running value),
    TResult finished(Finished value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $TimerStateCopyWith<TimerState> get copyWith;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res>;
  $Res call({@factoryParam int duration});
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res> implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  final TimerState _value;
  // ignore: unused_field
  final $Res Function(TimerState) _then;

  @override
  $Res call({
    Object duration = freezed,
  }) {
    return _then(_value.copyWith(
      duration: duration == freezed ? _value.duration : duration as int,
    ));
  }
}

/// @nodoc
abstract class $ReadyCopyWith<$Res> implements $TimerStateCopyWith<$Res> {
  factory $ReadyCopyWith(Ready value, $Res Function(Ready) then) =
      _$ReadyCopyWithImpl<$Res>;
  @override
  $Res call({@factoryParam int duration});
}

/// @nodoc
class _$ReadyCopyWithImpl<$Res> extends _$TimerStateCopyWithImpl<$Res>
    implements $ReadyCopyWith<$Res> {
  _$ReadyCopyWithImpl(Ready _value, $Res Function(Ready) _then)
      : super(_value, (v) => _then(v as Ready));

  @override
  Ready get _value => super._value as Ready;

  @override
  $Res call({
    Object duration = freezed,
  }) {
    return _then(Ready(
      duration: duration == freezed ? _value.duration : duration as int,
    ));
  }
}

@factoryMethod

/// @nodoc
class _$Ready with DiagnosticableTreeMixin implements Ready {
  const _$Ready({@factoryParam this.duration});

  @override
  @factoryParam
  final int duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerState.ready(duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerState.ready'))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Ready &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  $ReadyCopyWith<Ready> get copyWith =>
      _$ReadyCopyWithImpl<Ready>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult ready(@factoryParam int duration),
    @required TResult running(int duration),
    @required TResult finished(int duration),
  }) {
    assert(ready != null);
    assert(running != null);
    assert(finished != null);
    return ready(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult ready(@factoryParam int duration),
    TResult running(int duration),
    TResult finished(int duration),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (ready != null) {
      return ready(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult ready(Ready value),
    @required TResult running(Running value),
    @required TResult finished(Finished value),
  }) {
    assert(ready != null);
    assert(running != null);
    assert(finished != null);
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult ready(Ready value),
    TResult running(Running value),
    TResult finished(Finished value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class Ready implements TimerState {
  const factory Ready({@factoryParam int duration}) = _$Ready;

  @override
  @factoryParam
  int get duration;
  @override
  @JsonKey(ignore: true)
  $ReadyCopyWith<Ready> get copyWith;
}

/// @nodoc
abstract class $RunningCopyWith<$Res> implements $TimerStateCopyWith<$Res> {
  factory $RunningCopyWith(Running value, $Res Function(Running) then) =
      _$RunningCopyWithImpl<$Res>;
  @override
  $Res call({int duration});
}

/// @nodoc
class _$RunningCopyWithImpl<$Res> extends _$TimerStateCopyWithImpl<$Res>
    implements $RunningCopyWith<$Res> {
  _$RunningCopyWithImpl(Running _value, $Res Function(Running) _then)
      : super(_value, (v) => _then(v as Running));

  @override
  Running get _value => super._value as Running;

  @override
  $Res call({
    Object duration = freezed,
  }) {
    return _then(Running(
      duration: duration == freezed ? _value.duration : duration as int,
    ));
  }
}

/// @nodoc
class _$Running with DiagnosticableTreeMixin implements Running {
  const _$Running({this.duration});

  @override
  final int duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerState.running(duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerState.running'))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Running &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  $RunningCopyWith<Running> get copyWith =>
      _$RunningCopyWithImpl<Running>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult ready(@factoryParam int duration),
    @required TResult running(int duration),
    @required TResult finished(int duration),
  }) {
    assert(ready != null);
    assert(running != null);
    assert(finished != null);
    return running(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult ready(@factoryParam int duration),
    TResult running(int duration),
    TResult finished(int duration),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (running != null) {
      return running(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult ready(Ready value),
    @required TResult running(Running value),
    @required TResult finished(Finished value),
  }) {
    assert(ready != null);
    assert(running != null);
    assert(finished != null);
    return running(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult ready(Ready value),
    TResult running(Running value),
    TResult finished(Finished value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (running != null) {
      return running(this);
    }
    return orElse();
  }
}

abstract class Running implements TimerState {
  const factory Running({int duration}) = _$Running;

  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  $RunningCopyWith<Running> get copyWith;
}

/// @nodoc
abstract class $FinishedCopyWith<$Res> implements $TimerStateCopyWith<$Res> {
  factory $FinishedCopyWith(Finished value, $Res Function(Finished) then) =
      _$FinishedCopyWithImpl<$Res>;
  @override
  $Res call({int duration});
}

/// @nodoc
class _$FinishedCopyWithImpl<$Res> extends _$TimerStateCopyWithImpl<$Res>
    implements $FinishedCopyWith<$Res> {
  _$FinishedCopyWithImpl(Finished _value, $Res Function(Finished) _then)
      : super(_value, (v) => _then(v as Finished));

  @override
  Finished get _value => super._value as Finished;

  @override
  $Res call({
    Object duration = freezed,
  }) {
    return _then(Finished(
      duration: duration == freezed ? _value.duration : duration as int,
    ));
  }
}

/// @nodoc
class _$Finished with DiagnosticableTreeMixin implements Finished {
  const _$Finished({this.duration});

  @override
  final int duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimerState.finished(duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimerState.finished'))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Finished &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  $FinishedCopyWith<Finished> get copyWith =>
      _$FinishedCopyWithImpl<Finished>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult ready(@factoryParam int duration),
    @required TResult running(int duration),
    @required TResult finished(int duration),
  }) {
    assert(ready != null);
    assert(running != null);
    assert(finished != null);
    return finished(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult ready(@factoryParam int duration),
    TResult running(int duration),
    TResult finished(int duration),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (finished != null) {
      return finished(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult ready(Ready value),
    @required TResult running(Running value),
    @required TResult finished(Finished value),
  }) {
    assert(ready != null);
    assert(running != null);
    assert(finished != null);
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult ready(Ready value),
    TResult running(Running value),
    TResult finished(Finished value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class Finished implements TimerState {
  const factory Finished({int duration}) = _$Finished;

  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  $FinishedCopyWith<Finished> get copyWith;
}
