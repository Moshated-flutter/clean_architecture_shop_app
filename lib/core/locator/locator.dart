import 'package:get_it/get_it.dart';

import '../../features/intro/data/repositories/splash_connectivity_repository_impl.dart';
import '../../features/intro/domain/repositories/splash_repository.dart';
import '../../features/intro/domain/usecases/check_connectivity_usecase.dart';
import '../../features/intro/presentation/bloc/splash_cubit/cubit/splash_cubit.dart';

GetIt locator = GetIt.instance;

setup() async {
  //api provider

//repositories
  locator
      .registerSingleton<SplashRepository>(SplashConnectivityRepositoryImpl());

  // use cases
  locator.registerSingleton<CheckConnectivityUsecase>(
      CheckConnectivityUsecase(locator()));

  //blocs and cubit
  locator.registerSingleton<SplashCubit>(SplashCubit(locator()));
}
