import 'package:bienvenue_consumer_app_flutter/features/product/presentation/screen/Bill/widgets/body.dart';
import 'package:bienvenue_consumer_app_flutter/shared/Layout/layout_screen.dart';
import 'package:flutter/material.dart';

class BillScreen extends StatelessWidget {
  const BillScreen({Key? key}) : super(key: key);

  static String id = "bill_screen";

  @override
  Widget build(BuildContext context) {
    return Layout(
      currentTab: 3,
      body: const Body(),
    );
  }
}
