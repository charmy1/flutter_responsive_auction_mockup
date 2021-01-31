// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'infrastructure/auth/auth_impl.dart';
import 'domain/auth/auth_interface.dart';
import 'application/bottom_nav/bottom_nav_bloc.dart';
import 'application/cart_presentation_bloc/cart_presentation_bloc.dart';
import 'core/inject_module/injectable_module.dart';
import 'core/utils/network_info.dart';
import 'application/sign_in_bloc/sign_in_bloc.dart';
import 'application/sign_up_bloc/sign_up_bloc.dart';
import 'application/timer_bloc/timer_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.factory<BottomNavBloc>(() => BottomNavBloc());
  gh.factory<CartPresentationBloc>(() => CartPresentationBloc());
  gh.lazySingleton<DataConnectionChecker>(
      () => injectableModule.dataConnectionChecker);
  gh.lazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(get<DataConnectionChecker>()));
  gh.factory<SignUpBloc>(() => SignUpBloc());
  gh.factoryParam<TimerState, int, dynamic>(
      (duration, _) => TimerState.ready(duration: duration));
  gh.lazySingleton<AuthInterface>(() => AuthImpl(get<NetworkInfo>()));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<AuthInterface>()));
  gh.lazySingleton<TimerBloc>(() => TimerBloc(get<TimerState>()));
  return get;
}

class _$InjectableModule extends InjectableModule {}
