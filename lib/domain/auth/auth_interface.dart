
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/errors.dart';

abstract class AuthInterface {
  Future<Either<Failure, Unit>> registerWithEmailAndPassword({
    @required String emailAddress,
    @required String password,
  });

  Future<Either<Failure, Unit>> signInWithEmailAndPassword({
    @required String emailAddress,
    @required String password,
  });
}
