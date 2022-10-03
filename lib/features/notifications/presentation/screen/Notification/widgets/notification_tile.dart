import 'package:bienvenue_consumer_app_flutter/shared/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationTile extends StatelessWidget {
  final String img, title, subtitle;

  const NotificationTile(
      {super.key,
      required this.img,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      child: AppCard(
        child: ListTile(
          leading: CircleAvatar(
            child: SvgPicture.asset('assets/icons/$img'),
          ),
          title: Text(title),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(subtitle),
          ),
        ),
      ),
    );
  }
}
