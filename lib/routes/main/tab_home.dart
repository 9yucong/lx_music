import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:lx_music/common/log.dart';
import 'package:lx_music/music_sdk/model/wy_search_response_entity.dart';
import 'package:provider/provider.dart';

import '../../music_sdk/wy/wy_test_api.dart';

class TabHomePage extends StatefulWidget {
  const TabHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TabHomePageState();
  }
}

class _TabHomePageState extends State<TabHomePage> {
  final TextEditingController _searchController = TextEditingController();

  List<WySearchResponseResultSongs>? _musicList;

  _onMenuPress() {}

  _onSearchPress() {
    _searchMusic(_searchController.text);
  }

  _searchMusic(String key) async {
    WyTestApi wyTestApi = WyTestApi();
    _musicList = await wyTestApi.searchMusic(key);
    setState(() {
      _musicList = _musicList;
    });
  }

  _buildBody() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        WySearchResponseResultSongs? item = _musicList?[index];
        return GestureDetector(
          child: ListTile(
            title: Text(item?.name ?? ''),
            subtitle: Text(item?.ar?[0].name ?? ''),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(height: 1);
      },
      itemCount: _musicList?.length ?? 0,
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => _onMenuPress(),
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
        ),
        titleSpacing: 0,
        title: TextField(
          textInputAction: TextInputAction.search,
          controller: _searchController,
          decoration: InputDecoration(
            hintText: '搜索歌曲',
            suffixIcon: IconButton(
              icon: const Icon(Icons.search),
              color: Colors.black,
              iconSize: 24,
              onPressed: () => _onSearchPress(),
            ),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16))),
          ),
        ),
      ),
    );
  }
}
