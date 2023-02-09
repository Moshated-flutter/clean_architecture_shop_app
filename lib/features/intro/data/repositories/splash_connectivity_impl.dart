import 'dart:io';

import 'package:clean_architecture_shop_app/features/intro/domain/repositories/splash_repository.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class SplashConnectivityImpl extends SplashRepository {
  @override
  Future<bool> checkConnectibity() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }

    // var result = await Connectivity().checkConnectivity();
    // if (result == ConnectivityResult.mobile) {
    //   return true;
    // }
    // if (result == ConnectivityResult.wifi) {
    //   return true;
    // }
    // return false;
  }
}
