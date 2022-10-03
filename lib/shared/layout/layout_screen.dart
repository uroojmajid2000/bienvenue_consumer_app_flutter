import 'package:bienvenue_consumer_app_flutter/shared/layout/widgets/app_bar.dart';
import 'package:bienvenue_consumer_app_flutter/shared/layout/widgets/bottom_app_bar.dart';
import 'package:bienvenue_consumer_app_flutter/shared/layout/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final Widget body;
  final int currentTab;

  Layout({
    super.key,
    required this.body,
    this.currentTab = 0,
  });

  static String id = "layout_screen";

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: BuildDrawer(
        globalKey: _key,
      ),
      appBar: BuildAppbar(globalKey: _key),
      body: body,
      bottomNavigationBar: BuildBottomAppBar(
        currentTab: currentTab,
      ),
    );
  }
}
