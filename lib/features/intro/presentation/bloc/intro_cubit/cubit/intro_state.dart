part of 'intro_cubit.dart';

class IntroState {
  bool showGetStart;
  IntroState({required this.showGetStart});
  IntroState copyWith({bool? newGetStart}) {
    return IntroState(
      showGetStart: newGetStart ?? showGetStart,
    );
  }
}
