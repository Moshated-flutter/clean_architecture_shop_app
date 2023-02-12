import 'dart:developer';

import 'package:clean_architecture_shop_app/core/common/utils/constants.dart';
import 'package:dio/dio.dart';

abstract class HomeApiProvider {
  Future<dynamic> callHomeData();
}

class HomeApiProviderImpl implements HomeApiProvider {
  final Dio dio;

  HomeApiProviderImpl(this.dio);

  @override
  Future callHomeData() async {
    final result = dio.get('${Urls.BASE_URL}/mainData');
    log(result.toString());
    return result;
  }
}
