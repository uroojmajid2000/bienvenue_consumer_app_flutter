import 'package:bienvenue_consumer_app_flutter/features/notifications/presentation/screen/Notification/widgets/body.dart';

import 'package:bienvenue_consumer_app_flutter/shared/Layout/layout_screen.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  static String id = "notification_screen";

  @override
  Widget build(BuildContext context) {
    return Layout(
      currentTab: 4,
      body: const Body(),
    );
  }
}
