import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

//
class ServerFailure extends Failure {}

class NoDataFailure extends Failure {}

class NoInternetFailure extends Failure {}

class CacheFailure extends Failure {}

class CancelledByUserFailure extends Failure {}

class InvalidEmailFailure extends Failure {}
class InvalidEmailPassFailure extends Failure{}

class InvalidPasswordFailure extends Failure {}
class CheckBoxFailure extends Failure {}