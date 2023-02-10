import '../../../../core/common/resources/data_state.dart';

abstract class SplashRepository {
  Future<DataState<bool>> checkConnectibity();
}
