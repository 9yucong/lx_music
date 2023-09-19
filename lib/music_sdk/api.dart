import 'package:dio/dio.dart';

abstract class Api {
  Dio dio = Dio();

  Future<String> getMusicUrl(String songMid, String type);

  Future<String> searchMusic(String key, {int type, int limit, int page});
}
