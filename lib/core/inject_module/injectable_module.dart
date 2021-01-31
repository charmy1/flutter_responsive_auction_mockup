import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:injectable/injectable.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  DataConnectionChecker get dataConnectionChecker => DataConnectionChecker();

/* @lazySingleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
*/
/*  @singleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();*/
}
