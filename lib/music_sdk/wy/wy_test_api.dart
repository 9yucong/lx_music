import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:lx_music/common/log.dart';
import 'package:lx_music/music_sdk/api.dart';
import 'package:lx_music/music_sdk/crypto.dart';

import '../model/wy_search_response_entity.dart';

class WyTestApi extends Api {
  @override
  Future<String> getMusicUrl(String songMid, String type) async {
    Response response =
        await dio.get('http://ts.tempmusics.tk/url/wy/$songMid/$type',
            options: Options(headers: {
              'Accept': 'application/json',
              'User-Agent': 'lx-music mobile request',
            }));
    return response.toString();
  }

  @override
  Future<List<WySearchResponseResultSongs>?> searchMusic(String key,
      {int type = 1, int limit = 20, int page = 1}) async {
    final formObject = {
      's': key,
      'type': type,
      'limit': limit,
      'total': page == 1,
      'offset': limit * (page - 1)
    };
    Map<String, dynamic> map = {};
    map['params'] = Crypto.eapi('/api/cloudsearch/pc', json.encode(formObject));
    Response response =
        await dio.post('http://interface.music.163.com/eapi/batch',
            options: Options(headers: {
              "Accept": "application/json",
              "Content-type": "application/x-www-form-urlencoded",
              "User-Agent":
                  "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36",
              "origin": "https://music.163.com",
              "family": 4,
            }),
            data: map);
    return WySearchResponseEntity.fromJson(response.data).result?.songs;
  }
}
