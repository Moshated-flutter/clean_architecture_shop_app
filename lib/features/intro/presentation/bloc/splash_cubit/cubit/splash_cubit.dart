import 'package:bloc/bloc.dart';
import 'package:clean_architecture_shop_app/features/intro/presentation/bloc/splash_cubit/cubit/connection_status.dart';
import 'package:equatable/equatable.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit()
      : super(
          SplashState(
            connectionStatus: ConnectionInit(),
          ),
        );
}
