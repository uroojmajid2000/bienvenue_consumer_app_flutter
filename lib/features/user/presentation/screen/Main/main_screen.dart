import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Main/widgets/body.dart';
import 'package:bienvenue_consumer_app_flutter/shared/layout/layout_screen.dart';
import 'package:bienvenue_consumer_app_flutter/shared/layout/widgets/app_bar.dart';
import 'package:bienvenue_consumer_app_flutter/shared/layout/widgets/drawer.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static String id = "main_screen";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        drawer: BuildDrawer(
          globalKey: _key,
        ),
        appBar: BuildAppbar(globalKey: _key, showmenu: false));
    // Layout(
    //   body: const SingleChildScrollView(
    //     child: Body(),
    //   ),
    // );
  }
}
