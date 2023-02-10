import 'package:bloc/bloc.dart';

import '../../../../../../core/common/resources/data_state.dart';
import '../../../../domain/usecases/check_connectivity_usecase.dart';
import 'connection_status.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  final CheckConnectivityUsecase checkConnectivityUsecase;

  SplashCubit(this.checkConnectivityUsecase)
      : super(
          SplashState(
            connectionStatus: ConnectionInit(),
          ),
        );

  void checkconnectivity() async {
    emit(state.copyWith(newConnectionStatus: ConnectionInit()));
    DataState checkConnected = await checkConnectivityUsecase('');
    if (checkConnected is DataSuccess) {
      emit(state.copyWith(newConnectionStatus: ConnectionON()));
    } else {
      emit(state.copyWith(newConnectionStatus: ConnectionOFF()));
    }
  }
}
