import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../audio/audio_client.dart';

class Global {
  static late SharedPreferences _preferences;
  static String keyHomePageModelEntity = "keyHomePageModelEntity";
  static late AudioClient _audioClient;

  // 初始化全局信息，需在APP启动前执行
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    _preferences = await SharedPreferences.getInstance();
    _audioClient = AudioClient();
  }

  static AudioClient getAudioClient() {
    return _audioClient;
  }

  // 持久化首页数据
  static void saveHomePageModel() {
    // _preferences.setString(
    //     keyHomePageModelEntity, jsonEncode(homePageModelEntry.toJson()));
  }
}
