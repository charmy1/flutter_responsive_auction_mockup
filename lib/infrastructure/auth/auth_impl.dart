
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/errors.dart';
import 'package:flutter_app_responsive_auction_mockup/core/utils/network_info.dart';
import 'package:flutter_app_responsive_auction_mockup/domain/auth/auth_interface.dart';
import 'package:injectable/injectable.dart';
import 'package:injectable/injectable.dart';


@LazySingleton(as: AuthInterface)
class AuthImpl extends AuthInterface {

 // final RemoteDataSourceAuth _remoteDataSourceAuth;
  final NetworkInfo _networkInfo;

  AuthImpl( this._networkInfo);

  Future<Either<Failure, Unit>> registerWithEmailAndPassword(
      {String emailAddress, String password}) {
    // TODO: implement registerWithEmailAndPassword
    //  throw UnimplementedError();
    return Future.value();
  }

  @override
  Future<Either<Failure, Unit>> signInWithEmailAndPassword(
      {String emailAddress, String password}) async {
    if (await _networkInfo.isConnected) {
      /* try {
        User userList =
        await _remoteDataSourceAuth.login(emailAddress, password);
        if (userList.id != 0) {


          return Right(unit);
        } else {


          return Left(InvalidCredentialFailure());
        }
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NoInternetFailure());
    }*/


    }

    return Future.value();
  }

}
