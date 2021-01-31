import 'dart:core';
import 'package:dartz/dartz.dart';
import 'errors.dart';

extension StringExtensions on String {
  Either<Failure, String> get validatePassword {
    if (this.length >= 6) {
      return Right(this);
    } else {
      return Left(InvalidPasswordFailure());
    }
  }

  Either<Failure, String> get validateEmailAddress {
    const emailRegex =
        r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
    if (RegExp(emailRegex).hasMatch(this)) {
      return Right(this);
    } else {
      return Left(InvalidEmailFailure());
    }
  }



  Either<Failure, String> get validateEmailAddressPassword {
    const emailRegex =
    r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
    if (RegExp(emailRegex).hasMatch(this)) {
      return Right(this);
    } else {
      return Left(InvalidEmailPassFailure());
    }
  }


  Either<Failure, String>  validateNotNullPassword(String a){
    if ((this.length >= 1)&&(this==a) ) {
      return Right(this);
    } else {
      return Left(InvalidPasswordFailure());
    }
  }



  Either<Failure, String> get validateNotNull{///todo password policy
    if (this.length >= 1) {
      return Right(this);
    } else {
      return Left(InvalidPasswordFailure());
    }
  }

}

extension BoolExtension on bool{

  Either<Failure, bool> get validateCheckBox{
   return (this) ?  Right(this): Left(CheckBoxFailure());
  }

}