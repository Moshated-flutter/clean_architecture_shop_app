import 'package:clean_architecture_shop_app/features/home/domain/entities/home_entity.dart';

abstract class HomeDataStatus {}

class HomeDataInitial extends HomeDataStatus {}

class HomeDataLoading extends HomeDataStatus {}

class HomeDataCompleted extends HomeDataStatus {
  final HomeEntity homeEntity;
  HomeDataCompleted(this.homeEntity);
}

class HomeDataError extends HomeDataStatus {
  final String errorMessage;
  HomeDataError(this.errorMessage);
}
