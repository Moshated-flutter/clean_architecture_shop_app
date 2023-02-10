import 'dart:io';

import '../../../../core/common/resources/data_state.dart';
import '../../domain/repositories/splash_repository.dart';

class SplashConnectivityRepositoryImpl extends SplashRepository {
  @override
  Future<DataState<bool>> checkConnectibity() async {
    try {
      final result = await InternetAddress.lookup('example.com');

      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return DataSuccess(true);
      } else {
        return DataFailure('NO Connection');
      }
    } on SocketException catch (error) {
      return DataFailure(error.toString());
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
