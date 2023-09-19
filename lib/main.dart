import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'common/global.dart';
import 'music_sdk/wy/wy_test_api.dart';
import 'routes/main/route_main.dart';
import 'routes/route_playlist_detail.dart';

void main() {
  Global.init().then((e) => runApp(const MainApp()));
  WyTestApi wyTestApi = WyTestApi();
  wyTestApi.searchMusic('yg');
}

final _routerConfig = GoRouter(
  routes: [
    GoRoute(
      path: RouteMain.pathName,
      builder: (context, state) => const RouteMain(),
    ),
    GoRoute(
      path: RoutePlaylistDetail.pathName,
      builder: (context, state) =>
          RoutePlaylistDetail(playlistId: state.extra as String),
    ),
  ],
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Lx音乐',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerConfig: _routerConfig,
      );
  }
}
