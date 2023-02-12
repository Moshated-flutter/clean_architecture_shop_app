import 'package:clean_architecture_shop_app/features/home/data/models/home_model.dart';
import 'package:equatable/equatable.dart';

class HomeEntity extends Equatable {
  final String? message;
  final String? status;
  final Data? data;

  HomeEntity({
    this.message,
    this.status,
    this.data,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
