import 'package:clean_architecture_shop_app/core/common/resources/data_state.dart';
import 'package:clean_architecture_shop_app/features/home/domain/entities/home_entity.dart';

abstract class HomeRepsoitory {
  Future<DataState<HomeEntity>> getHomeData();
}
