import 'package:dio/dio.dart';
import 'package:mobile_pos/app/constants/api_path.dart';

class InterceptorApi extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.baseUrl = ApiPath.bash_url;
    options.connectTimeout = 5000;
    options.receiveTimeout = 5000;
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
  }
}
