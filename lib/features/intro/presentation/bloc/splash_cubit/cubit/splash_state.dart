// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'splash_cubit.dart';

class SplashState {
  final ConnectionStatus connectionStatus;
  SplashState({
    required this.connectionStatus,
  });

  SplashState copyWith({ConnectionStatus? newConnectionStatus}) {
    return SplashState(
        connectionStatus: newConnectionStatus ?? connectionStatus);
  }
}
