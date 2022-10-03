import 'package:bienvenue_consumer_app_flutter/features/product/presentation/screen/Advertisement/widgets/body.dart';
import 'package:bienvenue_consumer_app_flutter/shared/Layout/layout_screen.dart';
import 'package:flutter/material.dart';

class AdvertisementScreen extends StatelessWidget {
  const AdvertisementScreen({Key? key}) : super(key: key);

  static String id = "advertisement_screen";

  @override
  Widget build(BuildContext context) {
    return Layout(
      body: const Body(),
    );
  }
}
