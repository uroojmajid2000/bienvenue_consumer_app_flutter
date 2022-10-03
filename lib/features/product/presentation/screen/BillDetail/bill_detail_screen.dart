import 'package:bienvenue_consumer_app_flutter/features/product/presentation/screen/BillDetail/widgets/body.dart';
import 'package:bienvenue_consumer_app_flutter/shared/Layout/layout_screen.dart';
import 'package:flutter/material.dart';

class BillDetailScreen extends StatelessWidget {
  const BillDetailScreen({Key? key}) : super(key: key);

  static String id = "bill_detail_screen";

  @override
  Widget build(BuildContext context) {
    return Layout(
      body: const Body(),
    );
  }
}
