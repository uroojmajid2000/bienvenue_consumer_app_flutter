import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final Widget child;

  const AppCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: const BorderRadius.all(Radius.circular(14)),
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF3F5F7),
          borderRadius: BorderRadius.all(
            Radius.circular(14),
          ),
        ),
        child: child,
      ),
    );
  }
}
