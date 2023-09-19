
import 'package:flutter/material.dart';

class TabMinePage extends StatefulWidget {
  const TabMinePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TabMinePageState();
  }
}

class _TabMinePageState extends State<TabMinePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('我的'),
      ),
    );
  }
}
