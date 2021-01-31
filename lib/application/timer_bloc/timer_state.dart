part of 'timer_bloc.dart';

@freezed
@injectable
abstract class TimerState with _$TimerState {

  @factoryMethod
  const factory TimerState.ready({ @ factoryParam int duration}) = Ready;
  const factory TimerState.running({int duration}) = Running;
  const factory TimerState.finished({int duration}) = Finished;
}


