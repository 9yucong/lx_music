import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

  _onMenuPress() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: const [
          SizedBox(width: 8),
          Icon(Icons.access_alarm_sharp, color: Colors.black),
          SizedBox(width: 8),
          Icon(Icons.mic, color: Colors.black),
          SizedBox(width: 8),
        ],
        title: const SizedBox(
          height: 30,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
                size: 16,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
          ),
        ),
      ),
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
