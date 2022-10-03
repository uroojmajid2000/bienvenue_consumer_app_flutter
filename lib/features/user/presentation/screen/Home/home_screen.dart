import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Home/widgets/body.dart';

import 'package:bienvenue_consumer_app_flutter/shared/Layout/layout_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String id = "home_screen";

  @override
  Widget build(BuildContext context) {
    return Layout(
      currentTab: 1,
      body: const SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}
