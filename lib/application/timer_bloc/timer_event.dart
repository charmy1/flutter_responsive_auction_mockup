part of 'timer_bloc.dart';

@freezed
abstract class TimerEvent with _$TimerEvent{

  const factory TimerEvent.start({int duration}) = Start;

  const factory TimerEvent.resume({int duration}) = Resume;
  const factory TimerEvent.reset({int duration}) = Reset;
  const factory TimerEvent.tick({int duration}) = Tick;
}
