import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_app_responsive_auction_mockup/domain/timer/ticker.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

part 'timer_event.dart';

part 'timer_state.dart';

part 'timer_bloc.freezed.dart';

@lazySingleton
class TimerBloc extends Bloc<TimerEvent, TimerState> {
  static final int _duration = 210;

  TimerBloc(TimerState initialState)
      : super(TimerState.running(duration: _duration));

  /*@override
  TimerState get initialState => TimerState.ready(duration: _duration);
*/
  Ticker _ticker = Ticker();

  StreamSubscription<int> _tickerSubscription;

  @override
  Stream<TimerState> mapEventToState(
    TimerEvent event,
  ) async* {
    yield* event.map(start: (e) async* {
      /* yield state.copyWith(
        duration: e.duration
      );*/

      yield Running(duration: e.duration);
       _tickerSubscription?.cancel();

      _tickerSubscription = _ticker.tick(ticks: e.duration).listen(
        (duration) {
          add(Tick(duration: duration));
        },
      );
    }, reset: (e) async* {
      _tickerSubscription?.cancel();
      yield Ready(duration: e.duration);
    }, resume: (e) async* {
      _tickerSubscription?.resume();
      yield Running(duration: e.duration);
    }, tick: (e) async* {
      yield e.duration > 0
          ? Running(duration: e.duration)
          : Finished(duration: e.duration);
    });
  }
}
