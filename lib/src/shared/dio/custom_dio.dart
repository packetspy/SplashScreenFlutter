import 'package:dio/dio.dart';
import 'package:splash_screen_flutter/src/shared/constants.dart';
import 'package:splash_screen_flutter/src/shared/dio/interceptors.dart';

class CustomDio extends Dio {
  CustomDio() {
    options.baseUrl = Constants.baseurl;
    interceptors.add(CustomInterceptors());
    options.connectTimeout = 5000;
  }
}
