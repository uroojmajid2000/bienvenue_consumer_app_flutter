import 'package:bienvenue_consumer_app_flutter/resources/constants.dart';
import 'package:flutter/material.dart';

class BackAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Color color;

  const BackAppBar({super.key, required this.title, required this.color});

  @override
  Size get preferredSize => const Size.fromHeight(90);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: AppBar(
        elevation: 0,
        backgroundColor: color,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: kPrimaryColor.shade50,
              borderRadius: const BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            child: const Icon(
              Icons.keyboard_arrow_left,
              color: kPrimaryColor,
              size: 30,
            ),
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
    );
  }
}
