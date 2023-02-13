import 'package:bloc/bloc.dart';
import 'package:clean_architecture_shop_app/features/home/domain/usecases/get_home_data_usecase.dart';
import 'package:clean_architecture_shop_app/features/home/presentation/bloc/home_cubit/home_data_status.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetHomeDataUsecase homeDataUsecase;
  HomeCubit(this.homeDataUsecase)
      : super(HomeState(homeDataStatus: HomeDataLoading()));

  void callHomeDataEvant() {
    emit(state.copyWith(newHomeDataStatus: HomeDataLoading()));
  }
}
