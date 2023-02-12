import 'package:clean_architecture_shop_app/features/home/data/datasources/home_api_provider.dart';
import 'package:clean_architecture_shop_app/features/home/data/models/home_model.dart';
import 'package:clean_architecture_shop_app/features/home/domain/entities/home_entity.dart';
import 'package:clean_architecture_shop_app/core/common/resources/data_state.dart';
import 'package:clean_architecture_shop_app/features/home/domain/repositories/home_repositories.dart';
import 'package:dio/dio.dart';

class HomeRepositoryImpl extends HomeRepsoitory {
  final HomeApiProvider homeApiProvider;

  HomeRepositoryImpl(this.homeApiProvider);
  @override
  Future<DataState<HomeEntity>> getHomeData() async {
    try {
      Response response = await homeApiProvider.callHomeData();
      if (response.statusCode == 200) {
        final HomeEntity homeEntity = HomeModel.fromJson(response.data);
        return DataSuccess(homeEntity);
      } else {
        return DataFailure('موفقیت آمیز نبود');
      }
    } catch (error) {
      return DataFailure(error.toString());
    }
  }
}
