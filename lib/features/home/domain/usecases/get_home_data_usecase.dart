import 'package:clean_architecture_shop_app/core/common/resources/data_state.dart';
import 'package:clean_architecture_shop_app/core/common/resources/use_case.dart';
import 'package:clean_architecture_shop_app/features/home/domain/entities/home_entity.dart';
import 'package:clean_architecture_shop_app/features/home/domain/repositories/home_repositories.dart';

class GetHomeDataUsecase extends UseCase<DataState<HomeEntity>, String> {
  final HomeRepsoitory homeRepsoitory;

  GetHomeDataUsecase(this.homeRepsoitory);

  @override
  Future<DataState<HomeEntity>> call(String input) {
    return homeRepsoitory.getHomeData();
  }
}
