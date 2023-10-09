import 'package:dio/dio.dart';
import 'package:lx_music/common/log.dart';

abstract class Api {
  Dio dio = Dio()
    ..interceptors.add(LogInterceptor(responseBody: true, requestBody: true))
    ..interceptors.add(InterceptorsWrapper(
        onError: (DioException e, ErrorInterceptorHandler handler) {
      Log.e(e.response);
      Log.e(e.type);
      Log.e(e.error);
      return handler.next(e);
    }));

  Future<String> getMusicUrl(String songMid, String type);

  Future<String> searchMusic(String key, {int type, int limit, int page});
}
