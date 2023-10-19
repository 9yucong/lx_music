import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';

abstract class Api {
  Dio dio = Dio()
    ..interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    // ..httpClientAdapter = IOHttpClientAdapter(createHttpClient: () {
    //   return HttpClient()
    //     ..badCertificateCallback =
    //         ((X509Certificate cert, String host, int port) => true)
    //     ..findProxy = (Uri uri) => 'PROXY localhost:7890';
    // });

  Future getMusicUrl(String songMid, String type);

  Future searchMusic(String key, {int type, int limit, int page});
}
