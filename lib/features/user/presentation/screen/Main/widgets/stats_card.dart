import 'package:bienvenue_consumer_app_flutter/shared/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StatsCard extends StatelessWidget {
  final String img, text;

  const StatsCard({super.key, required this.img, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: AppCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              img,
              height: 55,
            ),
            const SizedBox(height: 9),
            Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
