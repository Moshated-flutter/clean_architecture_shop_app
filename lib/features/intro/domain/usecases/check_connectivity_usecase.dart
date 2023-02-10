import '../../../../core/common/resources/data_state.dart';
import '../../../../core/common/resources/use_case.dart';
import '../repositories/splash_repository.dart';

class CheckConnectivityUsecase extends UseCase<DataState<bool>, String> {
  final SplashRepository splashRepository;

  CheckConnectivityUsecase(this.splashRepository);

  @override
  Future<DataState<bool>> call(String input) {
    return splashRepository.checkConnectibity();
  }
}
