import 'package:bienvenue_consumer_app_flutter/shared/widgets/card.dart';
import 'package:flutter/material.dart';

class RedeemedCard extends StatelessWidget {
  final String heading, value;

  const RedeemedCard({super.key, required this.heading, required this.value});

  @override
  Widget build(BuildContext context) {
    TextStyle style =
        TextStyle(fontSize: 20, color: Colors.black.withOpacity(0.6));

    return Expanded(
      child: AppCard(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 15.0),
          child: Column(children: [
            Text(heading, style: style),
            const SizedBox(height: 5),
            Text(value, style: style),
          ]),
        ),
      ),
    );
  }
}
