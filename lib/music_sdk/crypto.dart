import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:encrypt/encrypt.dart';
import 'package:lx_music/common/log.dart';

class Crypto {
  static String eapiKey = utf8.fuse(base64).encode('e82ckenh8dichen8');

  static String eapi(String url, String formData) {
    String message = 'nobody${url}use${formData}md5forencrypt';
    Log.d('message = $message');
    var bytes = utf8.encode(message);
    Digest digest = md5.convert(bytes);
    String data = '$url-36cd479b6b5-$formData-36cd479b6b5-$digest';
    Log.d('data = $data');
    Log.d('eapiKey = $eapiKey');
    Log.d('ba64 data = ${utf8.encode(data)}');
    final encrypter =
        Encrypter(AES(Key.fromUtf8('e82ckenh8dichen8'), mode: AESMode.ecb));
    final iv = IV.fromLength(16);
    String result = base64ToHex(encrypter.encrypt(data, iv: iv).base64).toUpperCase();
    Log.d('aes result = ${encrypter.encrypt(data, iv: iv).base64}');
    Log.d('eapi result = $result');
    return '';
  }

  static String base64ToHex(String source) =>
      base64Decode(LineSplitter.split(source).join())
          .map((e) => e.toRadixString(16).padLeft(2, '0'))
          .join();
}
