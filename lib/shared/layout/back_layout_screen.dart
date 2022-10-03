import 'package:bienvenue_consumer_app_flutter/shared/layout/widgets/back_app_bar.dart';
import 'package:bienvenue_consumer_app_flutter/shared/layout/widgets/bottom_app_bar.dart';
import 'package:flutter/material.dart';

class BackLayout extends StatelessWidget {
  final Widget body;
  final String title;
  final int currentTab;
  final bool hideBottomNavigation;

  const BackLayout({
    super.key,
    required this.body,
    this.title = '',
    this.currentTab = 0,
    this.hideBottomNavigation = false,
  });

  static String id = "back_layout_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          hideBottomNavigation ? Colors.white : const Color(0xFFF4F6F8),
      appBar: BackAppBar(
        title: title,
        color: hideBottomNavigation ? Colors.white : const Color(0xFFF4F6F8),
      ),
      body: body,
      bottomNavigationBar: hideBottomNavigation
          ? null
          : BuildBottomAppBar(
              currentTab: currentTab,
            ),
    );
  }
}
