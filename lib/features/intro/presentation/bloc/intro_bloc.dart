import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'intro_event.dart';
part 'intro_state.dart';

class IntroBloc extends Bloc<IntroEvent, IntroState> {
  IntroBloc() : super(IntroInitial()) {
    on<IntroEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
