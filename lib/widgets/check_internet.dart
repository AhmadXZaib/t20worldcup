import 'package:connectivity_plus/connectivity_plus.dart';

class CheckInternet {
  static Future<bool> isInternetConnected() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
      // I am connected to a mobile network.
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
      // I am connected to a wifi network.
    } else {
      return false;
    }
  }
}
