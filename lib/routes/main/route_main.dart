import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lx_music/music_sdk/wy/wy_test_api.dart';
import 'tab_home.dart';
import 'tab_me_page.dart';

class RouteMain extends StatefulWidget {
  static String pathName = '/';

  const RouteMain({super.key});

  @override
  State<RouteMain> createState() => _RouteMainState();
}

class _RouteMainState extends State<RouteMain> {
  int _currentTabIndex = 0;
  final List _tabPageList = [const TabHomePage(), const TabMinePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabPageList[_currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTabIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervisor_account), label: "我的"),
        ],
        onTap: (int index) {
          setState(() {
            _currentTabIndex = index;
          });
        },
      ),
    );
  }
}
