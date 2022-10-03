import 'package:bienvenue_consumer_app_flutter/features/product/presentation/screen/ProductDetail/widgets/body.dart';
import 'package:bienvenue_consumer_app_flutter/shared/Layout/layout_screen.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  static String id = "product_detail_screen";

  @override
  Widget build(BuildContext context) {
    return Layout(body: const Body());
  }
}
