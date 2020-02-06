import 'package:dio/dio.dart';

class CustomInterceptors extends InterceptorsWrapper {
  @override
  onRequest(RequestOptions options) {
    print("REQUEST[${options.method}] => PATH: ${options.path}");
    return super.onRequest(options);
  }

  @override
  onResponse(Response response) {
    print("RESPONSE[${response.statusCode}] => PATH: ${response.request.path}");
    return super.onResponse(response);
  }

  @override
  onError(DioError err) {
    print("ERROR[${err.response.statusCode}] => PATH: ${err.request.path}");
    return super.onError(err);
  }
}
