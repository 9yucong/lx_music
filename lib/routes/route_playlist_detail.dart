
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class RoutePlaylistDetail extends StatelessWidget {
  static String pathName = '/playlist_detail_route';
  String playlistId;

  RoutePlaylistDetail({super.key, this.playlistId = ''});

  _onSharePress() {}

  _onCommandPress() {}

  _onCollectPress() {}

  _onBackPress(BuildContext context) {
    GoRouter.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => _onBackPress(context),
        ),
        leadingWidth: 48,
        titleSpacing: 0,
        title: const Text('歌单'),
        elevation: 0,
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 16),
          Icon(Icons.more_vert),
          SizedBox(width: 8),
        ],
      ),
      body: Center(
        child: Text('111'),
      ),
    );
  }

}
