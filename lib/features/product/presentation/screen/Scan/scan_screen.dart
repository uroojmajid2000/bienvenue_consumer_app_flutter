import 'package:bienvenue_consumer_app_flutter/features/product/presentation/screen/Scan/widgets/body.dart';
import 'package:bienvenue_consumer_app_flutter/shared/Layout/layout_screen.dart';
import 'package:flutter/material.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({Key? key}) : super(key: key);

  static String id = "scan_screen";

  @override
  Widget build(BuildContext context) {
    return Layout(currentTab: 2, body: const Body());
  }
}
