import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class TabHomePage extends StatefulWidget {
  const TabHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TabHomePageState();
  }
}

class _TabHomePageState extends State<TabHomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, cart, child) {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          ],
        ),
      );
    });
  }
}
