import 'package:flutter/material.dart';

class FeatureButton extends StatelessWidget {
  final Widget child;

  const FeatureButton({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFB8B8B8),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(padding: const EdgeInsets.all(13), child: child),
    );
  }
}
