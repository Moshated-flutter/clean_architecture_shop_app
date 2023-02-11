import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'intro_state.dart';

class IntroCubit extends Cubit<IntroState> {
  IntroCubit() : super(IntroState(showGetStart: false));

  void changeShowGetStart(bool value) {
    emit(state.copyWith(newGetStart: value));
  }
}
